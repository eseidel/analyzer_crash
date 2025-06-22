import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/list_attestations_response.dart';
import 'package:github/model/users/list_attestations200_response.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/users/list_attestations_response.dart';
import 'package:github/model/users/list_attestations200_response.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';

sealed class Users&#x2F;listAttestationsResponse {
    static Users&#x2F;listAttestationsResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Users&#x2F;listAttestationsResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;listAttestationsResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;listAttestationsResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
