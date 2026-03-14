//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailodds/api.dart';
import 'package:test/test.dart';


/// tests for ContactListsApi
void main() {
  // final instance = ContactListsApi();

  group('tests for ContactListsApi', () {
    // Append to contact list
    //
    // Append validated emails from additional jobs to an existing contact list. Duplicates are automatically skipped.
    //
    //Future<AppendToContactList200Response> appendToContactList(String listId, AppendToContactListRequest appendToContactListRequest) async
    test('test appendToContactList', () async {
      // TODO
    });

    // Create contact list
    //
    // Create a new contact list from one or more completed validation jobs. Only accepted (valid) emails are included.
    //
    //Future<CreateContactList201Response> createContactList(CreateContactListRequest createContactListRequest) async
    test('test createContactList', () async {
      // TODO
    });

    // Get inactive contacts report
    //
    // Get a report of contacts across all lists with no engagement activity (opens, clicks) in the specified period.
    //
    //Future<GetInactiveContactsReport200Response> getInactiveContactsReport({ int days }) async
    test('test getInactiveContactsReport', () async {
      // TODO
    });

    // List contact lists
    //
    // List contact lists for the authenticated account. Contact lists are built from validated email jobs.
    //
    //Future<ListContactLists200Response> listContactLists({ int page, int perPage }) async
    test('test listContactLists', () async {
      // TODO
    });

    // Query contact list
    //
    // Query contact list entries with structured filters. Supports filtering by validation status, domain, and other attributes.
    //
    //Future<QueryContactList200Response> queryContactList(String listId, QueryContactListRequest queryContactListRequest) async
    test('test queryContactList', () async {
      // TODO
    });

  });
}
