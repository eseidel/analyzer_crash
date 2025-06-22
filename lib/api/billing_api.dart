import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/billing-usage-report.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/billing-usage-report.dart';
import 'package:github/model/billing-usage-report_usage_items_inner.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/packages-billing-usage.dart';
import 'package:github/model/packages-billing-usage.dart';
import 'package:github/model/combined-billing-usage.dart';
import 'package:github/model/combined-billing-usage.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/actions-billing-usage.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/packages-billing-usage.dart';
import 'package:github/model/packages-billing-usage.dart';
import 'package:github/model/combined-billing-usage.dart';
import 'package:github/model/combined-billing-usage.dart';
import 'package:github/model/billing-usage-report-user.dart';
import 'package:github/model/billing-usage-report-user_usage_items_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/billing-usage-report-user.dart';
import 'package:github/model/billing-usage-report-user_usage_items_inner.dart';
class BillingApi {
    BillingApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Billing-usage-report> billing/getGithubBillingUsageReportOrg(
        String org,
        { int? year,int? month,int? day,int? hour, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/organizations/{org}/settings/billing/usage'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'year': ?year.toString(),
                'month': ?month.toString(),
                'day': ?day.toString(),
                'hour': ?hour.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Billing-usage-report.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubBillingUsageReportOrg');
    }
    Future<Actions-billing-usage> billing/getGithubActionsBillingOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/billing/actions'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubActionsBillingOrg');
    }
    Future<Packages-billing-usage> billing/getGithubPackagesBillingOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/billing/packages'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Packages-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubPackagesBillingOrg');
    }
    Future<Combined-billing-usage> billing/getSharedStorageBillingOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/billing/shared-storage'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Combined-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getSharedStorageBillingOrg');
    }
    Future<Actions-billing-usage> billing/getGithubActionsBillingUser(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/settings/billing/actions'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Actions-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubActionsBillingUser');
    }
    Future<Packages-billing-usage> billing/getGithubPackagesBillingUser(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/settings/billing/packages'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Packages-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubPackagesBillingUser');
    }
    Future<Combined-billing-usage> billing/getSharedStorageBillingUser(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/settings/billing/shared-storage'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Combined-billing-usage.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getSharedStorageBillingUser');
    }
    Future<Billing-usage-report-user> billing/getGithubBillingUsageReportUser(
        String username,
        { int? year,int? month,int? day,int? hour, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/settings/billing/usage'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'year': ?year.toString(),
                'month': ?month.toString(),
                'day': ?day.toString(),
                'hour': ?hour.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Billing-usage-report-user.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $billing/getGithubBillingUsageReportUser');
    }
}
