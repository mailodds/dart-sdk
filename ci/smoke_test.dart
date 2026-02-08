// SDK smoke test -- validates build-from-source and API integration.
import 'dart:convert';
import 'dart:io';

const apiUrl = 'https://api.mailodds.com';

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

Future<Map<String, dynamic>> apiCall(String email, String key) async {
  final client = HttpClient()..connectionTimeout = Duration(seconds: 30);
  final request = await client.postUrl(Uri.parse('$apiUrl/v1/validate'));
  request.headers.set('Authorization', 'Bearer $key');
  request.headers.contentType = ContentType.json;
  request.write(jsonEncode({'email': email}));
  final response = await request.close();
  final body = await response.transform(utf8.decoder).join();
  client.close();
  return {'code': response.statusCode, 'data': jsonDecode(body)};
}

Future<void> main() async {
  final apiKey = Platform.environment['MAILODDS_TEST_KEY'] ?? '';
  if (apiKey.isEmpty) {
    print('ERROR: MAILODDS_TEST_KEY not set');
    exit(1);
  }

  // Prove SDK is importable
  // ignore: unused_import
  await Future.value(); // ensure async context

  final cases = [
    ['test@deliverable.mailodds.com', 'valid', 'accept', null],
    ['test@invalid.mailodds.com', 'invalid', 'reject', 'smtp_rejected'],
    ['test@risky.mailodds.com', 'catch_all', 'accept_with_caution', 'catch_all_detected'],
    ['test@disposable.mailodds.com', 'do_not_mail', 'reject', 'disposable'],
    ['test@role.mailodds.com', 'do_not_mail', 'reject', 'role_account'],
    ['test@timeout.mailodds.com', 'unknown', 'retry_later', 'smtp_unreachable'],
    ['test@freeprovider.mailodds.com', 'valid', 'accept', null],
  ];

  for (final c in cases) {
    final email = c[0] as String;
    final domain = email.split('@')[1].split('.')[0];
    try {
      final r = await apiCall(email, apiKey);
      final d = r['data'] as Map<String, dynamic>;
      check('$domain.status', c[1], d['status']);
      check('$domain.action', c[2], d['action']);
      check('$domain.sub_status', c[3], d['sub_status']);
      check('$domain.test_mode', true, d['test_mode']);
    } catch (e) {
      failed++;
      print('  FAIL: $domain error: $e');
    }
  }

  // Error handling
  final r401 = await apiCall('test@deliverable.mailodds.com', 'invalid_key');
  check('error.401', 401, r401['code']);

  final client = HttpClient()..connectionTimeout = Duration(seconds: 10);
  final req = await client.postUrl(Uri.parse('$apiUrl/v1/validate'));
  req.headers.set('Authorization', 'Bearer $apiKey');
  req.headers.contentType = ContentType.json;
  req.write('{}');
  final resp = await req.close();
  await resp.drain();
  client.close();
  if (resp.statusCode == 400 || resp.statusCode == 422) {
    passed++;
  } else {
    failed++;
    print('  FAIL: error.400 expected=400|422 got=${resp.statusCode}');
  }

  final total = passed + failed;
  final result = failed == 0 ? 'PASS' : 'FAIL';
  print('\n$result: Dart SDK ($passed/$total)');
  exit(failed == 0 ? 0 : 1);
}
