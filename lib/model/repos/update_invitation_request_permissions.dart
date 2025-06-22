import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_invitation_request_permissions.dart';
import 'package:github/model/repos/update_invitation_request_permissions.dart';
enum Repos&#x2F;updateInvitationRequestPermissions {
    read._('read'),
    write._('write'),
    maintain._('maintain'),
    triage._('triage'),
    admin._('admin'),
    ;

    const Repos&#x2F;updateInvitationRequestPermissions._(this.value);

    factory Repos&#x2F;updateInvitationRequestPermissions.fromJson(String json) {
        return Repos&#x2F;updateInvitationRequestPermissions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;updateInvitationRequestPermissions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateInvitationRequestPermissions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateInvitationRequestPermissions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
