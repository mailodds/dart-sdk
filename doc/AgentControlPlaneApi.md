# mailodds.api.AgentControlPlaneApi

## Load the API package
```dart
import 'package:mailodds/api.dart';
```

All URIs are relative to *https://api.mailodds.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMcpCapabilities**](AgentControlPlaneApi.md#getmcpcapabilities) | **GET** /v1/mcp/capabilities | Get MCP capabilities


# **getMcpCapabilities**
> McpCapabilities getMcpCapabilities()

Get MCP capabilities

Returns a static capability manifest listing all MCP tools organized by pillar. Used by AI agents for tool discovery and scope-based self-correction.

### Example
```dart
import 'package:mailodds/api.dart';

final api_instance = AgentControlPlaneApi();

try {
    final result = api_instance.getMcpCapabilities();
    print(result);
} catch (e) {
    print('Exception when calling AgentControlPlaneApi->getMcpCapabilities: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**McpCapabilities**](McpCapabilities.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

