import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/root.dart';
import 'package:github/model/root.dart';
import 'package:github/model/api-overview.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
import 'package:github/model/api-overview.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
import 'package:github/model/basic-error.dart';
class MetaApi {
    MetaApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Root> meta/root(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Root.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $meta/root');
    }
    Future<Api-overview> meta/get(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/meta'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Api-overview.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $meta/get');
    }
    Future<String> meta/getOctocat(
        { String? s, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/octocat'
,
            queryParameters: {
                's': ?s.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body) as String ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $meta/getOctocat');
    }
    Future<List<String>> meta/getAllVersions(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/versions'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $meta/getAllVersions');
    }
    Future<String> meta/getZen(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/zen'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body) as String ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $meta/getZen');
    }
}
