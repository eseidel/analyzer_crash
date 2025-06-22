import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaigns/list_org_campaigns_parameter5.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/campaigns/create_campaign_request.dart';
import 'package:github/model/campaigns/create_campaign_request_code_scanning_alerts_inner.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/campaigns/update_campaign_request.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
class CampaignsApi {
    CampaignsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Campaign-summary>> campaigns/listOrgCampaigns(
        String org,
        { int? page = 1,int? perPage = 30,Direction? direction = Direction.desc,Campaign-state? state,Campaigns/listOrgCampaignsParameter5? sort = Campaigns/listOrgCampaignsParameter5.created, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/campaigns'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'direction': ?direction?.toJson().toString(),
                'state': ?state?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Campaign-summary>((e) => Campaign-summary.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $campaigns/listOrgCampaigns');
    }
    Future<Campaign-summary> campaigns/createCampaign(
        String org,
        Campaigns/createCampaignRequest campaigns/createCampaignRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/campaigns'
            .replaceAll('{org}', "${ org }")
            ,
            body: campaigns/createCampaignRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Campaign-summary.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $campaigns/createCampaign');
    }
    Future<Campaign-summary> campaigns/getCampaignSummary(
        String org,
        int campaignNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/campaigns/{campaign_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{campaign_number}', "${ campaignNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Campaign-summary.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $campaigns/getCampaignSummary');
    }
    Future<void> campaigns/deleteCampaign(
        String org,
        int campaignNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/campaigns/{campaign_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{campaign_number}', "${ campaignNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $campaigns/deleteCampaign');
    }
    Future<Campaign-summary> campaigns/updateCampaign(
        String org,
        int campaignNumber,
        Campaigns/updateCampaignRequest campaigns/updateCampaignRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/campaigns/{campaign_number}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{campaign_number}', "${ campaignNumber }")
            ,
            body: campaigns/updateCampaignRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Campaign-summary.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $campaigns/updateCampaign');
    }
}
