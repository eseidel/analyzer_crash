import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_base_role.dart';
enum Organization-roleBaseRole {
    read._('read'),
    triage._('triage'),
    write._('write'),
    maintain._('maintain'),
    admin._('admin'),
    ;

    const Organization-roleBaseRole._(this.value);

    factory Organization-roleBaseRole.fromJson(String json) {
        return Organization-roleBaseRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-roleBaseRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-roleBaseRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-roleBaseRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
