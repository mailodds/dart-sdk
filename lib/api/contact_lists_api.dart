//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of mailodds;


class ContactListsApi {
  ContactListsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add contact to list
  ///
  /// Add a single contact to a contact list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [AddContactRequest] addContactRequest (required):
  Future<Response> addContactWithHttpInfo(String listId, AddContactRequest addContactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/contacts'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody = addContactRequest;

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

  /// Add contact to list
  ///
  /// Add a single contact to a contact list.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [AddContactRequest] addContactRequest (required):
  Future<AddContact201Response?> addContact(String listId, AddContactRequest addContactRequest,) async {
    final response = await addContactWithHttpInfo(listId, addContactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddContact201Response',) as AddContact201Response;
    
    }
    return null;
  }

  /// Append to contact list
  ///
  /// Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
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

  /// Delete contact
  ///
  /// Remove a single contact from a contact list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] contactId (required):
  Future<Response> deleteContactWithHttpInfo(String listId, String contactId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/contacts/{contact_id}'
      .replaceAll('{list_id}', listId)
      .replaceAll('{contact_id}', contactId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete contact
  ///
  /// Remove a single contact from a contact list.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] contactId (required):
  Future<DeletePolicyRule200Response?> deleteContact(String listId, String contactId,) async {
    final response = await deleteContactWithHttpInfo(listId, contactId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePolicyRule200Response',) as DeletePolicyRule200Response;
    
    }
    return null;
  }

  /// Delete a contact list
  ///
  /// Permanently delete a contact list and all its entries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  Future<Response> deleteContactListWithHttpInfo(String listId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a contact list
  ///
  /// Permanently delete a contact list and all its entries.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  Future<DeletePolicyRule200Response?> deleteContactList(String listId,) async {
    final response = await deleteContactListWithHttpInfo(listId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePolicyRule200Response',) as DeletePolicyRule200Response;
    
    }
    return null;
  }

  /// Export contact list
  ///
  /// Export a contact list as CSV.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  Future<Response> exportContactListWithHttpInfo(String listId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/export'
      .replaceAll('{list_id}', listId);

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

  /// Export contact list
  ///
  /// Export a contact list as CSV.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  Future<String?> exportContactList(String listId,) async {
    final response = await exportContactListWithHttpInfo(listId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
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

  /// Import contacts from CSV
  ///
  /// Import contacts into a list from a CSV file (max 10MB).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [MultipartFile] file (required):
  ///   CSV file (max 10MB)
  ///
  /// * [String] columnMapping:
  ///   JSON mapping of CSV columns to contact fields
  ///
  /// * [String] consentSource:
  ///   Source of consent for imported contacts
  ///
  /// * [String] tags:
  ///   JSON array of tags to apply
  Future<Response> importContactListWithHttpInfo(String listId, MultipartFile file, { String? columnMapping, String? consentSource, String? tags, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/import'
      .replaceAll('{list_id}', listId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (columnMapping != null) {
      hasFields = true;
      mp.fields[r'column_mapping'] = parameterToString(columnMapping);
    }
    if (consentSource != null) {
      hasFields = true;
      mp.fields[r'consent_source'] = parameterToString(consentSource);
    }
    if (tags != null) {
      hasFields = true;
      mp.fields[r'tags'] = parameterToString(tags);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Import contacts from CSV
  ///
  /// Import contacts into a list from a CSV file (max 10MB).
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [MultipartFile] file (required):
  ///   CSV file (max 10MB)
  ///
  /// * [String] columnMapping:
  ///   JSON mapping of CSV columns to contact fields
  ///
  /// * [String] consentSource:
  ///   Source of consent for imported contacts
  ///
  /// * [String] tags:
  ///   JSON array of tags to apply
  Future<ImportContactList200Response?> importContactList(String listId, MultipartFile file, { String? columnMapping, String? consentSource, String? tags, }) async {
    final response = await importContactListWithHttpInfo(listId, file,  columnMapping: columnMapping, consentSource: consentSource, tags: tags, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportContactList200Response',) as ImportContactList200Response;
    
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

  /// Update contact
  ///
  /// Update a single contact in a contact list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] contactId (required):
  ///
  /// * [UpdateContactRequest] updateContactRequest (required):
  Future<Response> updateContactWithHttpInfo(String listId, String contactId, UpdateContactRequest updateContactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contact-lists/{list_id}/contacts/{contact_id}'
      .replaceAll('{list_id}', listId)
      .replaceAll('{contact_id}', contactId);

    // ignore: prefer_final_locals
    Object? postBody = updateContactRequest;

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

  /// Update contact
  ///
  /// Update a single contact in a contact list.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] contactId (required):
  ///
  /// * [UpdateContactRequest] updateContactRequest (required):
  Future<AddContact201Response?> updateContact(String listId, String contactId, UpdateContactRequest updateContactRequest,) async {
    final response = await updateContactWithHttpInfo(listId, contactId, updateContactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddContact201Response',) as AddContact201Response;
    
    }
    return null;
  }
}
