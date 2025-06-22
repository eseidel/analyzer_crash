import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/rate-limit-overview.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/rate-limit-overview.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
class Rate-limitApi {
    Rate-limitApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Rate-limit-overview> rateLimit/get(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/rate_limit'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Rate-limit-overview.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $rateLimit/get');
    }
}
