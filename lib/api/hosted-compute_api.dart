import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/hosted_compute/list_network_configurations_for_org200_response.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/hosted_compute/list_network_configurations_for_org200_response.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/hosted_compute/create_network_configuration_for_org_request.dart';
import 'package:github/model/hosted_compute/create_network_configuration_for_org_request_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request.dart';
import 'package:github/model/hosted_compute/update_network_configuration_for_org_request_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-configuration.dart';
import 'package:github/model/network-configuration_compute_service.dart';
import 'package:github/model/network-settings.dart';
import 'package:github/model/network-settings.dart';
class Hosted-computeApi {
    Hosted-computeApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<HostedCompute/listNetworkConfigurationsForOrg200Response> hostedCompute/listNetworkConfigurationsForOrg(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/network-configurations'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return HostedCompute/listNetworkConfigurationsForOrg200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/listNetworkConfigurationsForOrg');
    }
    Future<Network-configuration> hostedCompute/createNetworkConfigurationForOrg(
        String org,
        HostedCompute/createNetworkConfigurationForOrgRequest hostedCompute/createNetworkConfigurationForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/settings/network-configurations'
            .replaceAll('{org}', "${ org }")
            ,
            body: hostedCompute/createNetworkConfigurationForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Network-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/createNetworkConfigurationForOrg');
    }
    Future<Network-configuration> hostedCompute/getNetworkConfigurationForOrg(
        String org,
        String networkConfigurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{network_configuration_id}', "${ networkConfigurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Network-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/getNetworkConfigurationForOrg');
    }
    Future<void> hostedCompute/deleteNetworkConfigurationFromOrg(
        String org,
        String networkConfigurationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{network_configuration_id}', "${ networkConfigurationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/deleteNetworkConfigurationFromOrg');
    }
    Future<Network-configuration> hostedCompute/updateNetworkConfigurationForOrg(
        String org,
        String networkConfigurationId,
        HostedCompute/updateNetworkConfigurationForOrgRequest hostedCompute/updateNetworkConfigurationForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{network_configuration_id}', "${ networkConfigurationId }")
            ,
            body: hostedCompute/updateNetworkConfigurationForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Network-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/updateNetworkConfigurationForOrg');
    }
    Future<Network-settings> hostedCompute/getNetworkSettingsForOrg(
        String org,
        String networkSettingsId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/settings/network-settings/{network_settings_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{network_settings_id}', "${ networkSettingsId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Network-settings.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $hostedCompute/getNetworkSettingsForOrg');
    }
}
