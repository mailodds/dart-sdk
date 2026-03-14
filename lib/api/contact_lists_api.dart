//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContactListsApi {
  ContactListsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Append to contact list
  ///
  /// Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   Contact list UUID
  ///
  /// * [AppendToContactListRequest] appendToContactListRequest (required):
  Future<Response> appendToContactListWithHttpInfo(String listId, AppendToContactListRequest appendToContactListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/append'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody = appendToContactListRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Append to contact list
  ///
  /// Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   Contact list UUID
  ///
  /// * [AppendToContactListRequest] appendToContactListRequest (required):
  Future<AppendToContactList200Response?> appendToContactList(String listId, AppendToContactListRequest appendToContactListRequest,) async {
    final response = await appendToContactListWithHttpInfo(listId, appendToContactListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppendToContactList200Response',) as AppendToContactList200Response;
    
    }
    return null;
  }

  /// Create contact list
  ///
  /// Create a new contact list from one or more completed validation jobs. Only accepted (valid) emails are included.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateContactListRequest] createContactListRequest (required):
  Future<Response> createContactListWithHttpInfo(CreateContactListRequest createContactListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists';

    // ignore: prefer_final_locals
    Object? postBody = createContactListRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create contact list
  ///
  /// Create a new contact list from one or more completed validation jobs. Only accepted (valid) emails are included.
  ///
  /// Parameters:
  ///
  /// * [CreateContactListRequest] createContactListRequest (required):
  Future<CreateContactList201Response?> createContactList(CreateContactListRequest createContactListRequest,) async {
    final response = await createContactListWithHttpInfo(createContactListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateContactList201Response',) as CreateContactList201Response;
    
    }
    return null;
  }

  /// Get inactive contacts report
  ///
  /// Get a report of contacts across all lists with no engagement activity (opens, clicks) in the specified period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Inactivity threshold in days
  Future<Response> getInactiveContactsReportWithHttpInfo({ int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/inactive-report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
    }

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

  /// Get inactive contacts report
  ///
  /// Get a report of contacts across all lists with no engagement activity (opens, clicks) in the specified period.
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Inactivity threshold in days
  Future<GetInactiveContactsReport200Response?> getInactiveContactsReport({ int? days, }) async {
    final response = await getInactiveContactsReportWithHttpInfo( days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetInactiveContactsReport200Response',) as GetInactiveContactsReport200Response;
    
    }
    return null;
  }

  /// List contact lists
  ///
  /// List contact lists for the authenticated account. Contact lists are built from validated email jobs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> listContactListsWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }

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

  /// List contact lists
  ///
  /// List contact lists for the authenticated account. Contact lists are built from validated email jobs.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<ListContactLists200Response?> listContactLists({ int? page, int? perPage, }) async {
    final response = await listContactListsWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListContactLists200Response',) as ListContactLists200Response;
    
    }
    return null;
  }

  /// Query contact list
  ///
  /// Query contact list entries with structured filters. Supports filtering by validation status, domain, and other attributes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   Contact list UUID
  ///
  /// * [QueryContactListRequest] queryContactListRequest (required):
  Future<Response> queryContactListWithHttpInfo(String listId, QueryContactListRequest queryContactListRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/query'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody = queryContactListRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Query contact list
  ///
  /// Query contact list entries with structured filters. Supports filtering by validation status, domain, and other attributes.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///   Contact list UUID
  ///
  /// * [QueryContactListRequest] queryContactListRequest (required):
  Future<QueryContactList200Response?> queryContactList(String listId, QueryContactListRequest queryContactListRequest,) async {
    final response = await queryContactListWithHttpInfo(listId, queryContactListRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryContactList200Response',) as QueryContactList200Response;
    
    }
    return null;
  }
}
