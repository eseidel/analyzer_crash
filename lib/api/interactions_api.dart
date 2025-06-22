import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/interactions/get_restrictions_for_org200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_org200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-limit.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-expiry.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_repo200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_repo200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-limit.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-expiry.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user_response.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-limit.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interaction-expiry.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
class InteractionsApi {
    InteractionsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Interactions/getRestrictionsForOrg200Response> interactions/getRestrictionsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/interaction-limits'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interactions/getRestrictionsForOrg200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/getRestrictionsForOrg');
    }
    Future<Interaction-limit-response> interactions/setRestrictionsForOrg(
        String org,
        Interaction-limit interaction-limit,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/interaction-limits'
            .replaceAll('{org}', "${ org }")
            ,
            body: interaction-limit.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interaction-limit-response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/setRestrictionsForOrg');
    }
    Future<void> interactions/removeRestrictionsForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/interaction-limits'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/removeRestrictionsForOrg');
    }
    Future<Interactions/getRestrictionsForRepo200Response> interactions/getRestrictionsForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/interaction-limits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interactions/getRestrictionsForRepo200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/getRestrictionsForRepo');
    }
    Future<Interaction-limit-response> interactions/setRestrictionsForRepo(
        String owner,
        String repo,
        Interaction-limit interaction-limit,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/interaction-limits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: interaction-limit.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interaction-limit-response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/setRestrictionsForRepo');
    }
    Future<void> interactions/removeRestrictionsForRepo(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/interaction-limits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/removeRestrictionsForRepo');
    }
    Future<Interactions/getRestrictionsForAuthenticatedUserResponse> interactions/getRestrictionsForAuthenticatedUser(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/interaction-limits'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interactions/getRestrictionsForAuthenticatedUserResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/getRestrictionsForAuthenticatedUser');
    }
    Future<Interaction-limit-response> interactions/setRestrictionsForAuthenticatedUser(
        Interaction-limit interaction-limit,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/interaction-limits'
,
            body: interaction-limit.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Interaction-limit-response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/setRestrictionsForAuthenticatedUser');
    }
    Future<void> interactions/removeRestrictionsForAuthenticatedUser(
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/interaction-limits'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $interactions/removeRestrictionsForAuthenticatedUser');
    }
}
