import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/repository-invitation_permissions.dart';
enum Repository-invitationPermissions {
    read._('read'),
    write._('write'),
    admin._('admin'),
    triage._('triage'),
    maintain._('maintain'),
    ;

    const Repository-invitationPermissions._(this.value);

    factory Repository-invitationPermissions.fromJson(String json) {
        return Repository-invitationPermissions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-invitationPermissions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-invitationPermissions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-invitationPermissions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
