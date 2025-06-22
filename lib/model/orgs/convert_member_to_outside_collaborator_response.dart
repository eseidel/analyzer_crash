import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_response.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_response.dart';

sealed class Orgs&#x2F;convertMemberToOutsideCollaboratorResponse {
    static Orgs&#x2F;convertMemberToOutsideCollaboratorResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Orgs&#x2F;convertMemberToOutsideCollaboratorResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;convertMemberToOutsideCollaboratorResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;convertMemberToOutsideCollaboratorResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
