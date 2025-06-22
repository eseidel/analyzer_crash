import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/oidc-custom-sub.dart';
import 'package:github/model/oidc-custom-sub.dart';
import 'package:github/model/oidc-custom-sub.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
class OidcApi {
    OidcApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Oidc-custom-sub> oidc/getOidcCustomSubTemplateForOrg(
        String org,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/actions/oidc/customization/sub'
            .replaceAll('{org}', "${ org }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Oidc-custom-sub.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $oidc/getOidcCustomSubTemplateForOrg');
    }
    Future<Empty-object> oidc/updateOidcCustomSubTemplateForOrg(
        String org,
        Oidc-custom-sub oidc-custom-sub,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/actions/oidc/customization/sub'
            .replaceAll('{org}', "${ org }")
            ,
            body: oidc-custom-sub.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $oidc/updateOidcCustomSubTemplateForOrg');
    }
}
