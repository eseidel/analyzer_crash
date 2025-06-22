import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_request.dart';
import 'package:github/model/orgs/convert_member_to_outside_collaborator_request.dart';
@immutable
class Orgs&#x2F;convertMemberToOutsideCollaboratorRequest {
    Orgs&#x2F;convertMemberToOutsideCollaboratorRequest(
        {  this.async = false,
         }
    );

    factory Orgs&#x2F;convertMemberToOutsideCollaboratorRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;convertMemberToOutsideCollaboratorRequest(
            async: (json['async'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;convertMemberToOutsideCollaboratorRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;convertMemberToOutsideCollaboratorRequest.fromJson(json);
    }

    final  bool? async;


    Map<String, dynamic> toJson() {
        return {
            'async': async,
        };
    }

    @override
    int get hashCode =>
          async.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;convertMemberToOutsideCollaboratorRequest
            && async == other.async
        ;
    }
}
