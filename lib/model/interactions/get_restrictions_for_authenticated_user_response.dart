import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user_response.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user_response.dart';
import 'package:github/model/interactions/get_restrictions_for_authenticated_user200_response.dart';
import 'package:github/model/interaction-limit-response.dart';
import 'package:github/model/interaction-group.dart';

sealed class Interactions&#x2F;getRestrictionsForAuthenticatedUserResponse {
    static Interactions&#x2F;getRestrictionsForAuthenticatedUserResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Interactions&#x2F;getRestrictionsForAuthenticatedUserResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Interactions&#x2F;getRestrictionsForAuthenticatedUserResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Interactions&#x2F;getRestrictionsForAuthenticatedUserResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
