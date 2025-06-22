import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/gitignore-template.dart';
import 'package:github/model/gitignore-template.dart';
class GitignoreApi {
    GitignoreApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<String>> gitignore/getAllTemplates(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gitignore/templates'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gitignore/getAllTemplates');
    }
    Future<Gitignore-template> gitignore/getTemplate(
        String name,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gitignore/templates/{name}'
            .replaceAll('{name}', "${ name }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gitignore-template.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gitignore/getTemplate');
    }
}
