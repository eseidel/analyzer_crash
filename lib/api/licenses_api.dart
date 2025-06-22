import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/license-simple.dart';
import 'package:github/model/license-simple.dart';
import 'package:github/model/license.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/license.dart';
import 'package:github/model/license-content.dart';
import 'package:github/model/license-content_links.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/license-content.dart';
import 'package:github/model/license-content_links.dart';
import 'package:github/model/nullable-license-simple.dart';
class LicensesApi {
    LicensesApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<License-simple>> licenses/getAllCommonlyUsed(
        { bool? featured,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/licenses'
,
            queryParameters: {
                'featured': ?featured.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<License-simple>((e) => License-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $licenses/getAllCommonlyUsed');
    }
    Future<License> licenses/get(
        String license,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/licenses/{license}'
            .replaceAll('{license}', "${ license }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return License.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $licenses/get');
    }
    Future<License-content> licenses/getForRepo(
        String owner,
        String repo,
        { Code-scanning-ref? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/license'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ?ref?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return License-content.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $licenses/getForRepo');
    }
}
