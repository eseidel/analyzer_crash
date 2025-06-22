import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request_role.dart';
import 'package:github/model/teams/add_or_update_membership_for_user_in_org_request_role.dart';
enum Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole {
    member._('member'),
    maintainer._('maintainer'),
    ;

    const Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole._(this.value);

    factory Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole.fromJson(String json) {
        return Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateMembershipForUserInOrgRequestRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
