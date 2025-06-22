import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/set_membership_for_user_request_role.dart';
import 'package:github/model/orgs/set_membership_for_user_request_role.dart';
enum Orgs&#x2F;setMembershipForUserRequestRole {
    admin._('admin'),
    member._('member'),
    ;

    const Orgs&#x2F;setMembershipForUserRequestRole._(this.value);

    factory Orgs&#x2F;setMembershipForUserRequestRole.fromJson(String json) {
        return Orgs&#x2F;setMembershipForUserRequestRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;setMembershipForUserRequestRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;setMembershipForUserRequestRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;setMembershipForUserRequestRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
