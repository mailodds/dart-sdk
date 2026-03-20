//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ISPFBLGuidesApi {
  ISPFBLGuidesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get ISP FBL guide
  ///
  /// Retrieve a specific ISP feedback loop setup guide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ispId (required):
  Future<Response> getIspFblGuideWithHttpInfo(String ispId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/isp-fbl/guides/{isp_id}'
      .replaceAll('{isp_id}', ispId);

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

  /// Get ISP FBL guide
  ///
  /// Retrieve a specific ISP feedback loop setup guide.
  ///
  /// Parameters:
  ///
  /// * [String] ispId (required):
  Future<void> getIspFblGuide(String ispId,) async {
    final response = await getIspFblGuideWithHttpInfo(ispId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List ISP FBL guides
  ///
  /// List all ISP feedback loop setup guides.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listIspFblGuidesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/isp-fbl/guides';

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

  /// List ISP FBL guides
  ///
  /// List all ISP feedback loop setup guides.
  Future<void> listIspFblGuides() async {
    final response = await listIspFblGuidesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
