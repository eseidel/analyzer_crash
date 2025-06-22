import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request_role.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_legacy_request_role.dart';
@immutable
class Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest {
    Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest(
        {  this.role = Teams/addOrUpdateMembershipForUserLegacyRequestRole.member,
         }
    );

    factory Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest(
            role: Teams/addOrUpdateMembershipForUserLegacyRequestRole.maybeFromJson(json['role'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest.fromJson(json);
    }

    final  Teams/addOrUpdateMembershipForUserLegacyRequestRole? role;


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
        return other is Teams&#x2F;addOrUpdateMembershipForUserLegacyRequest
            && role == other.role
        ;
    }
}
