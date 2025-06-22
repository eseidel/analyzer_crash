import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/get_by_id200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/users/get_by_id200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';

sealed class Users&#x2F;getById200Response {
    static Users&#x2F;getById200Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Users&#x2F;getById200Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;getById200Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;getById200Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
