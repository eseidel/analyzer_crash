import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter3.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter3.dart';
enum Orgs&#x2F;listPendingInvitationsParameter3 {
    all._('all'),
    admin._('admin'),
    directMember._('direct_member'),
    billingManager._('billing_manager'),
    hiringManager._('hiring_manager'),
    ;

    const Orgs&#x2F;listPendingInvitationsParameter3._(this.value);

    factory Orgs&#x2F;listPendingInvitationsParameter3.fromJson(String json) {
        return Orgs&#x2F;listPendingInvitationsParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;listPendingInvitationsParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listPendingInvitationsParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listPendingInvitationsParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
