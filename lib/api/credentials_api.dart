import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/credentials/revoke_request.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
class CredentialsApi {
    CredentialsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<dynamic> credentials/revoke(
        Credentials/revokeRequest credentials/revokeRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/credentials/revoke'
,
            body: credentials/revokeRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $credentials/revoke');
    }
}
