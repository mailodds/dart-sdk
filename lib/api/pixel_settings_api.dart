//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class PixelSettingsApi {
  PixelSettingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get pixel settings
  ///
  /// Get the web pixel tracking configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPixelSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pixel-settings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get pixel settings
  ///
  /// Get the web pixel tracking configuration.
  Future<GetPixelSettings200Response?> getPixelSettings() async {
    final response = await getPixelSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetPixelSettings200Response',) as GetPixelSettings200Response;
    
    }
    return null;
  }

  /// Update pixel settings
  ///
  /// Update the web pixel subscribe list configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdatePixelSettingsRequest] updatePixelSettingsRequest (required):
  Future<Response> updatePixelSettingsWithHttpInfo(UpdatePixelSettingsRequest updatePixelSettingsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/pixel-settings';

    // ignore: prefer_final_locals
    Object? postBody = updatePixelSettingsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update pixel settings
  ///
  /// Update the web pixel subscribe list configuration.
  ///
  /// Parameters:
  ///
  /// * [UpdatePixelSettingsRequest] updatePixelSettingsRequest (required):
  Future<GetPixelSettings200Response?> updatePixelSettings(UpdatePixelSettingsRequest updatePixelSettingsRequest,) async {
    final response = await updatePixelSettingsWithHttpInfo(updatePixelSettingsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetPixelSettings200Response',) as GetPixelSettings200Response;
    
    }
    return null;
  }
}
