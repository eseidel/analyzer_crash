import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/update_request_organization_permission.dart';
import 'package:github/model/projects/update_request_organization_permission.dart';
enum Projects&#x2F;updateRequestOrganizationPermission {
    read._('read'),
    write._('write'),
    admin._('admin'),
    none._('none'),
    ;

    const Projects&#x2F;updateRequestOrganizationPermission._(this.value);

    factory Projects&#x2F;updateRequestOrganizationPermission.fromJson(String json) {
        return Projects&#x2F;updateRequestOrganizationPermission.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Projects&#x2F;updateRequestOrganizationPermission value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;updateRequestOrganizationPermission? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;updateRequestOrganizationPermission.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
