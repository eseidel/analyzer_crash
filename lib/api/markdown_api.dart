import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/markdown/render_request.dart';
import 'package:github/model/markdown/render_request_mode.dart';
class MarkdownApi {
    MarkdownApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<String> markdown/render(
        Markdown/renderRequest markdown/renderRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/markdown'
,
            body: markdown/renderRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body) as String ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $markdown/render');
    }
    Future<String> markdown/renderRaw(
        { String? string, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/markdown/raw'
,
            body: string,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body) as String ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $markdown/renderRaw');
    }
}
