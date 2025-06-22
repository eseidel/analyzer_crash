import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter4.dart';
import 'package:github/model/orgs/list_pending_invitations_parameter4.dart';
enum Orgs&#x2F;listPendingInvitationsParameter4 {
    all._('all'),
    member._('member'),
    scim._('scim'),
    ;

    const Orgs&#x2F;listPendingInvitationsParameter4._(this.value);

    factory Orgs&#x2F;listPendingInvitationsParameter4.fromJson(String json) {
        return Orgs&#x2F;listPendingInvitationsParameter4.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;listPendingInvitationsParameter4 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listPendingInvitationsParameter4? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listPendingInvitationsParameter4.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
