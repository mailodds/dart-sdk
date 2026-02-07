# MailOdds SDK for Dart

Official Dart client for the [MailOdds Email Validation API](https://mailodds.com/docs).

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  mailodds: ^1.0.0
```

Then run:

```shell
dart pub get
```

## Quick Start

```dart
import 'package:mailodds/api.dart';

final client = ApiClient(
  authentication: HttpBearerAuth()..accessToken = 'mo_live_your_api_key',
);
final api = EmailValidationApi(client);

final request = ValidateRequest(email: 'user@example.com');
final result = await api.validateEmail(request);

if (result != null) {
  switch (result.action) {
    case ValidationResponseActionEnum.accept:
      print('Safe to send');
    case ValidationResponseActionEnum.acceptWithCaution:
      print('Valid but risky -- flag for review');
    case ValidationResponseActionEnum.reject:
      print('Do not send');
    case ValidationResponseActionEnum.retryLater:
      print('Temporary failure -- retry after backoff');
  }
}
```

## Response Handling

Branch on the `action` field for decisioning:

| Action | Meaning | Recommended |
|--------|---------|-------------|
| `accept` | Safe to send | Add to mailing list |
| `accept_with_caution` | Valid but risky (catch-all, role account) | Flag for review |
| `reject` | Invalid or disposable | Do not send |
| `retry_later` | Temporary failure | Retry after backoff |

## Test Mode

Use an `mo_test_` prefixed API key with test domains for predictable responses without consuming credits.

## API Reference

Full API documentation: https://mailodds.com/docs
OpenAPI spec: https://mailodds.com/openapi.yaml

## License

MIT
