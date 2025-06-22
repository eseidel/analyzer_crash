import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/add_collaborator_request_permission.dart';
import 'package:github/model/projects/add_collaborator_request_permission.dart';
enum Projects&#x2F;addCollaboratorRequestPermission {
    read._('read'),
    write._('write'),
    admin._('admin'),
    ;

    const Projects&#x2F;addCollaboratorRequestPermission._(this.value);

    factory Projects&#x2F;addCollaboratorRequestPermission.fromJson(String json) {
        return Projects&#x2F;addCollaboratorRequestPermission.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Projects&#x2F;addCollaboratorRequestPermission value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;addCollaboratorRequestPermission? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;addCollaboratorRequestPermission.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
