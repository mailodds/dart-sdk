// SDK smoke test -- validates build-from-source and API integration using the SDK client.
import 'dart:io';
import 'package:mailodds/api.dart';

int passed = 0;
int failed = 0;

void check(String label, dynamic expected, dynamic actual) {
  if (expected == actual) {
    passed++;
  } else {
    failed++;
    print('  FAIL: $label expected=$expected got=$actual');
  }
}

Future<void> main() async {
  final apiKey = Platform.environment['MAILODDS_TEST_KEY'] ?? '';
  if (apiKey.isEmpty) {
    print('ERROR: MAILODDS_TEST_KEY not set');
    exit(1);
  }

  final auth = HttpBearerAuth();
  auth.accessToken = apiKey;
  final client = ApiClient(basePath: 'https://api.mailodds.com', authentication: auth);
  final api = EmailValidationApi(client);

  final cases = <List<String?>>[
    ['test@deliverable.mailodds.com', 'valid', 'accept', null],
    ['test@invalid.mailodds.com', 'invalid', 'reject', 'smtp_rejected'],
    ['test@risky.mailodds.com', 'catch_all', 'accept_with_caution', 'catch_all_detected'],
    ['test@disposable.mailodds.com', 'do_not_mail', 'reject', 'disposable'],
    ['test@role.mailodds.com', 'do_not_mail', 'reject', 'role_account'],
    ['test@timeout.mailodds.com', 'unknown', 'retry_later', 'smtp_unreachable'],
    ['test@freeprovider.mailodds.com', 'valid', 'accept', null],
  ];

  for (final c in cases) {
    final email = c[0]!;
    final domain = email.split('@')[1].split('.')[0];
    try {
      final resp = await api.validateEmail(ValidateRequest(email: email));
      check('$domain.status', c[1], resp?.status?.value);
      check('$domain.action', c[2], resp?.action?.value);
      check('$domain.sub_status', c[3], resp?.subStatus?.value);
    } catch (e) {
      failed++;
      print('  FAIL: $domain error: $e');
    }
  }

  // Error handling: 401 with bad key
  try {
    final badAuth = HttpBearerAuth();
    badAuth.accessToken = 'invalid_key';
    final badClient = ApiClient(basePath: 'https://api.mailodds.com', authentication: badAuth);
    final badApi = EmailValidationApi(badClient);
    await badApi.validateEmail(ValidateRequest(email: 'test@deliverable.mailodds.com'));
    failed++;
    print('  FAIL: error.401 no exception raised');
  } on ApiException catch (e) {
    check('error.401', 401, e.code);
  }

  // Error handling: 400/422 with missing email
  try {
    await api.validateEmail(ValidateRequest(email: ''));
    failed++;
    print('  FAIL: error.400 no exception raised');
  } on ApiException catch (e) {
    if (e.code == 400 || e.code == 422) {
      passed++;
    } else {
      failed++;
      print('  FAIL: error.400 expected=400|422 got=${e.code}');
    }
  }

  final total = passed + failed;
  final result = failed == 0 ? 'PASS' : 'FAIL';
  print('\n$result: Dart SDK ($passed/$total)');
  exit(failed == 0 ? 0 : 1);
}
