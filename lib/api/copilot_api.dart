import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/copilot-organization-details.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot-organization-details.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
import 'package:github/model/copilot/list_copilot_seats200_response.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot/list_copilot_seats200_response.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/copilot/add_copilot_seats_for_teams_request.dart';
import 'package:github/model/copilot/add_copilot_seats_for_teams201_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot/add_copilot_seats_for_teams201_response.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams_request.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams200_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams200_response.dart';
import 'package:github/model/copilot/add_copilot_seats_for_users_request.dart';
import 'package:github/model/copilot/add_copilot_seats_for_users201_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot/add_copilot_seats_for_users201_response.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_users_request.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_users200_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_users200_response.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/copilot-usage-metrics-day.dart';
import 'package:github/model/copilot-ide-code-completions.dart';
import 'package:github/model/copilot-ide-code-completions_languages_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner.dart';
import 'package:github/model/copilot-ide-code-completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github/model/copilot-ide-chat.dart';
import 'package:github/model/copilot-ide-chat_editors_inner.dart';
import 'package:github/model/copilot-ide-chat_editors_inner_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner.dart';
import 'package:github/model/copilot-dotcom-pull-requests_repositories_inner_models_inner.dart';
class CopilotApi {
    CopilotApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Copilot-organization-details> copilot/getCopilotOrganizationDetails(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/copilot/billing'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot-organization-details.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/getCopilotOrganizationDetails');
    }
    Future<Copilot/listCopilotSeats200Response> copilot/listCopilotSeats(
        String org,
        { int? page = 1,int? perPage = 50, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/copilot/billing/seats'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot/listCopilotSeats200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/listCopilotSeats');
    }
    Future<Copilot/addCopilotSeatsForTeams201Response> copilot/addCopilotSeatsForTeams(
        String org,
        Copilot/addCopilotSeatsForTeamsRequest copilot/addCopilotSeatsForTeamsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/copilot/billing/selected_teams'
            .replaceAll('{org}', "${ org }")
            ,
            body: copilot/addCopilotSeatsForTeamsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot/addCopilotSeatsForTeams201Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/addCopilotSeatsForTeams');
    }
    Future<Copilot/cancelCopilotSeatAssignmentForTeams200Response> copilot/cancelCopilotSeatAssignmentForTeams(
        String org,
        Copilot/cancelCopilotSeatAssignmentForTeamsRequest copilot/cancelCopilotSeatAssignmentForTeamsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/copilot/billing/selected_teams'
            .replaceAll('{org}', "${ org }")
            ,
            body: copilot/cancelCopilotSeatAssignmentForTeamsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot/cancelCopilotSeatAssignmentForTeams200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/cancelCopilotSeatAssignmentForTeams');
    }
    Future<Copilot/addCopilotSeatsForUsers201Response> copilot/addCopilotSeatsForUsers(
        String org,
        Copilot/addCopilotSeatsForUsersRequest copilot/addCopilotSeatsForUsersRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/copilot/billing/selected_users'
            .replaceAll('{org}', "${ org }")
            ,
            body: copilot/addCopilotSeatsForUsersRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot/addCopilotSeatsForUsers201Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/addCopilotSeatsForUsers');
    }
    Future<Copilot/cancelCopilotSeatAssignmentForUsers200Response> copilot/cancelCopilotSeatAssignmentForUsers(
        String org,
        Copilot/cancelCopilotSeatAssignmentForUsersRequest copilot/cancelCopilotSeatAssignmentForUsersRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/copilot/billing/selected_users'
            .replaceAll('{org}', "${ org }")
            ,
            body: copilot/cancelCopilotSeatAssignmentForUsersRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot/cancelCopilotSeatAssignmentForUsers200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/cancelCopilotSeatAssignmentForUsers');
    }
    Future<List<Copilot-usage-metrics-day>> copilot/copilotMetricsForOrganization(
        String org,
        { String? since,String? until,int? page = 1,int? perPage = 28, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/copilot/metrics'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'since': ?since.toString(),
                'until': ?until.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Copilot-usage-metrics-day>((e) => Copilot-usage-metrics-day.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/copilotMetricsForOrganization');
    }
    Future<Copilot-seat-details> copilot/getCopilotSeatDetailsForUser(
        String org,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/members/{username}/copilot'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Copilot-seat-details.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/getCopilotSeatDetailsForUser');
    }
    Future<List<Copilot-usage-metrics-day>> copilot/copilotMetricsForTeam(
        String org,
        String teamSlug,
        { String? since,String? until,int? page = 1,int? perPage = 28, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/team/{team_slug}/copilot/metrics'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
            ,
            queryParameters: {
                'since': ?since.toString(),
                'until': ?until.toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Copilot-usage-metrics-day>((e) => Copilot-usage-metrics-day.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $copilot/copilotMetricsForTeam');
    }
}
