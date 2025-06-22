import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/create_invitation_request_role.dart';
import 'package:github/model/orgs/create_invitation_request_role.dart';
enum Orgs&#x2F;createInvitationRequestRole {
    admin._('admin'),
    directMember._('direct_member'),
    billingManager._('billing_manager'),
    reinstate._('reinstate'),
    ;

    const Orgs&#x2F;createInvitationRequestRole._(this.value);

    factory Orgs&#x2F;createInvitationRequestRole.fromJson(String json) {
        return Orgs&#x2F;createInvitationRequestRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;createInvitationRequestRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;createInvitationRequestRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;createInvitationRequestRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
