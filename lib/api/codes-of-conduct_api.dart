import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/code-of-conduct.dart';
class Codes-of-conductApi {
    Codes-of-conductApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Code-of-conduct>> codesOfConduct/getAllCodesOfConduct(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/codes_of_conduct'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Code-of-conduct>((e) => Code-of-conduct.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codesOfConduct/getAllCodesOfConduct');
    }
    Future<Code-of-conduct> codesOfConduct/getConductCode(
        String key,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/codes_of_conduct/{key}'
            .replaceAll('{key}', "${ key }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Code-of-conduct.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $codesOfConduct/getConductCode');
    }
}
