import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-sort.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret_scanning/update_alert_request.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/secret-scanning-alert-resolution-comment.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret-scanning-location.dart';
import 'package:github/model/secret-scanning-location_type.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-location.dart';
import 'package:github/model/secret-scanning-location_type.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret_scanning/create_push_protection_bypass_request.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/secret-scanning-push-protection-bypass.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-push-protection-bypass.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/secret-scanning-scan-history.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
import 'package:github/model/secret-scanning-scan-history.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
class Secret-scanningApi {
    Secret-scanningApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Organization-secret-scanning-alert>> secretScanning/listAlertsForEnterprise(
        String enterprise,
        { Secret-scanning-alert-state? state,String? secretType,String? resolution,Secret-scanning-alert-sort? sort = Secret-scanning-alert-sort.created,Direction? direction = Direction.desc,int? perPage = 30,String? before,String? after,String? validity,bool? isPubliclyLeaked = false,bool? isMultiRepo = false,bool? hideSecret = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/enterprises/{enterprise}/secret-scanning/alerts'
            .replaceAll('{enterprise}', "${ enterprise }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'secret_type': ?secretType.toString(),
                'resolution': ?resolution.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'validity': ?validity.toString(),
                'is_publicly_leaked': ?isPubliclyLeaked.toString(),
                'is_multi_repo': ?isMultiRepo.toString(),
                'hide_secret': ?hideSecret.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-secret-scanning-alert>((e) => Organization-secret-scanning-alert.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/listAlertsForEnterprise');
    }
    Future<List<Organization-secret-scanning-alert>> secretScanning/listAlertsForOrg(
        String org,
        { Secret-scanning-alert-state? state,String? secretType,String? resolution,Secret-scanning-alert-sort? sort = Secret-scanning-alert-sort.created,Direction? direction = Direction.desc,int? page = 1,int? perPage = 30,String? before,String? after,String? validity,bool? isPubliclyLeaked = false,bool? isMultiRepo = false,bool? hideSecret = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/secret-scanning/alerts'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'secret_type': ?secretType.toString(),
                'resolution': ?resolution.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'validity': ?validity.toString(),
                'is_publicly_leaked': ?isPubliclyLeaked.toString(),
                'is_multi_repo': ?isMultiRepo.toString(),
                'hide_secret': ?hideSecret.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Organization-secret-scanning-alert>((e) => Organization-secret-scanning-alert.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/listAlertsForOrg');
    }
    Future<List<Secret-scanning-alert>> secretScanning/listAlertsForRepo(
        String owner,
        String repo,
        { Secret-scanning-alert-state? state,String? secretType,String? resolution,Secret-scanning-alert-sort? sort = Secret-scanning-alert-sort.created,Direction? direction = Direction.desc,int? page = 1,int? perPage = 30,String? before,String? after,String? validity,bool? isPubliclyLeaked = false,bool? isMultiRepo = false,bool? hideSecret = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/secret-scanning/alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'secret_type': ?secretType.toString(),
                'resolution': ?resolution.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'validity': ?validity.toString(),
                'is_publicly_leaked': ?isPubliclyLeaked.toString(),
                'is_multi_repo': ?isMultiRepo.toString(),
                'hide_secret': ?hideSecret.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Secret-scanning-alert>((e) => Secret-scanning-alert.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/listAlertsForRepo');
    }
    Future<Secret-scanning-alert> secretScanning/getAlert(
        String owner,
        String repo,
        int alertNumber,
        { bool? hideSecret = false, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            queryParameters: {
                'hide_secret': ?hideSecret.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Secret-scanning-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/getAlert');
    }
    Future<Secret-scanning-alert> secretScanning/updateAlert(
        String owner,
        String repo,
        int alertNumber,
        SecretScanning/updateAlertRequest secretScanning/updateAlertRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
            ,
            body: secretScanning/updateAlertRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Secret-scanning-alert.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/updateAlert');
    }
    Future<List<Secret-scanning-location>> secretScanning/listLocationsForAlert(
        String owner,
        String repo,
        int alertNumber,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{alert_number}', "${ alertNumber }")
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
            return (jsonDecode(response.body) as List).map<Secret-scanning-location>((e) => Secret-scanning-location.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/listLocationsForAlert');
    }
    Future<Secret-scanning-push-protection-bypass> secretScanning/createPushProtectionBypass(
        String owner,
        String repo,
        SecretScanning/createPushProtectionBypassRequest secretScanning/createPushProtectionBypassRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/secret-scanning/push-protection-bypasses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: secretScanning/createPushProtectionBypassRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Secret-scanning-push-protection-bypass.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/createPushProtectionBypass');
    }
    Future<Secret-scanning-scan-history> secretScanning/getScanHistory(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/secret-scanning/scan-history'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Secret-scanning-scan-history.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $secretScanning/getScanHistory');
    }
}
