import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
enum Organization-programmatic-access-grant-requestRepositorySelection {
    none._('none'),
    all._('all'),
    subset._('subset'),
    ;

    const Organization-programmatic-access-grant-requestRepositorySelection._(this.value);

    factory Organization-programmatic-access-grant-requestRepositorySelection.fromJson(String json) {
        return Organization-programmatic-access-grant-requestRepositorySelection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-programmatic-access-grant-requestRepositorySelection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-programmatic-access-grant-requestRepositorySelection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-programmatic-access-grant-requestRepositorySelection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
