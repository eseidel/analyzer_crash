import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request_role.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request_role.dart';
@immutable
class Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest {
    Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest(
        {  this.role = Teams/addOrUpdateMembershipForUserInOrgRequestRole.member,
         }
    );

    factory Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest(
            role: Teams/addOrUpdateMembershipForUserInOrgRequestRole.maybeFromJson(json['role'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest.fromJson(json);
    }

    final  Teams/addOrUpdateMembershipForUserInOrgRequestRole? role;


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
        return other is Teams&#x2F;addOrUpdateMembershipForUserInOrgRequest
            && role == other.role
        ;
    }
}
