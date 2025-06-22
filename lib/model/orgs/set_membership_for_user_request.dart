import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/set_membership_for_user_request.dart';
import 'package:github/model/orgs/set_membership_for_user_request_role.dart';
import 'package:github/model/orgs/set_membership_for_user_request.dart';
import 'package:github/model/orgs/set_membership_for_user_request_role.dart';
@immutable
class Orgs&#x2F;setMembershipForUserRequest {
    Orgs&#x2F;setMembershipForUserRequest(
        {  this.role = Orgs/setMembershipForUserRequestRole.member,
         }
    );

    factory Orgs&#x2F;setMembershipForUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;setMembershipForUserRequest(
            role: Orgs/setMembershipForUserRequestRole.maybeFromJson(json['role'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;setMembershipForUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;setMembershipForUserRequest.fromJson(json);
    }

    final  Orgs/setMembershipForUserRequestRole? role;


    Map<String, dynamic> toJson() {
        return {
            'role': role?.toJson(),
        };
    }

    @override
    int get hashCode =>
          role.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;setMembershipForUserRequest
            && role == other.role
        ;
    }
}
