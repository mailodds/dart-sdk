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


/// tests for CampaignsApi
void main() {
  // final instance = CampaignsApi();

  group('tests for CampaignsApi', () {
    // Cancel a campaign
    //
    // Cancel a scheduled or in-progress campaign. Messages already delivered are not recalled.
    //
    //Future<CampaignResponse> cancelCampaign(String campaignId) async
    test('test cancelCampaign', () async {
      // TODO
    });

    // Create a campaign
    //
    // Create a new email campaign. Campaigns target a subscriber list and support A/B variant testing.
    //
    //Future<CampaignResponse> createCampaign(CreateCampaignRequest createCampaignRequest) async
    test('test createCampaign', () async {
      // TODO
    });

    // Create A/B variant
    //
    // Add an A/B test variant to a campaign. Each variant has its own subject, body, and traffic weight. The campaign must be in draft status.
    //
    //Future<CreateCampaignVariant201Response> createCampaignVariant(String campaignId, CreateVariantRequest createVariantRequest) async
    test('test createCampaignVariant', () async {
      // TODO
    });

    // Get campaign with stats
    //
    // Get a campaign by ID including delivery statistics and engagement metrics.
    //
    //Future<CampaignResponse> getCampaign(String campaignId) async
    test('test getCampaign', () async {
      // TODO
    });

    // List campaigns
    //
    // List all campaigns for the authenticated account with pagination.
    //
    //Future<ListCampaigns200Response> listCampaigns({ int page, int perPage, String status }) async
    test('test listCampaigns', () async {
      // TODO
    });

    // Schedule a campaign
    //
    // Schedule a campaign for future delivery. Provide a send_at timestamp in ISO 8601 format.
    //
    //Future<CampaignResponse> scheduleCampaign(String campaignId, ScheduleCampaignRequest scheduleCampaignRequest) async
    test('test scheduleCampaign', () async {
      // TODO
    });

    // Send a campaign
    //
    // Begin sending a campaign immediately. The campaign must be in draft status with at least one variant and a target list.
    //
    //Future<CampaignResponse> sendCampaign(String campaignId) async
    test('test sendCampaign', () async {
      // TODO
    });

  });
}
