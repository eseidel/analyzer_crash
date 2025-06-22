import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
class EmojisApi {
    EmojisApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Map<String, String>> emojis/get(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/emojis'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body).map((key, value) => MapEntry(key, value as String )).toMap();
        }

        throw ApiException(response.statusCode, 'Unhandled response from $emojis/get');
    }
}
