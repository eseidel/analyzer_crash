import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/private_registries/list_org_private_registries200_response.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/private_registries/list_org_private_registries200_response.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/private_registries/create_org_private_registry_request.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_registry_type.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_visibility.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
import 'package:github/model/private_registries/get_org_public_key200_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/private_registries/get_org_public_key200_response.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/private_registries/update_org_private_registry_request.dart';
import 'package:github/model/private_registries/update_org_private_registry_request_registry_type.dart';
import 'package:github/model/private_registries/update_org_private_registry_request_visibility.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
class Private-registriesApi {
    Private-registriesApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<PrivateRegistries/listOrgPrivateRegistries200Response> privateRegistries/listOrgPrivateRegistries(
        String org,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/private-registries'
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
            return PrivateRegistries/listOrgPrivateRegistries200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/listOrgPrivateRegistries');
    }
    Future<Org-private-registry-configuration-with-selected-repositories> privateRegistries/createOrgPrivateRegistry(
        String org,
        PrivateRegistries/createOrgPrivateRegistryRequest privateRegistries/createOrgPrivateRegistryRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/private-registries'
            .replaceAll('{org}', "${ org }")
            ,
            body: privateRegistries/createOrgPrivateRegistryRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-private-registry-configuration-with-selected-repositories.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/createOrgPrivateRegistry');
    }
    Future<PrivateRegistries/getOrgPublicKey200Response> privateRegistries/getOrgPublicKey(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/private-registries/public-key'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return PrivateRegistries/getOrgPublicKey200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/getOrgPublicKey');
    }
    Future<Org-private-registry-configuration> privateRegistries/getOrgPrivateRegistry(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/private-registries/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Org-private-registry-configuration.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/getOrgPrivateRegistry');
    }
    Future<void> privateRegistries/deleteOrgPrivateRegistry(
        String org,
        String secretName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/private-registries/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/deleteOrgPrivateRegistry');
    }
    Future<void> privateRegistries/updateOrgPrivateRegistry(
        String org,
        String secretName,
        PrivateRegistries/updateOrgPrivateRegistryRequest privateRegistries/updateOrgPrivateRegistryRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/orgs/{org}/private-registries/{secret_name}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{secret_name}', "${ secretName }")
            ,
            body: privateRegistries/updateOrgPrivateRegistryRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $privateRegistries/updateOrgPrivateRegistry');
    }
}
