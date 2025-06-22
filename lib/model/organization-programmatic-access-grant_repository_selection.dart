import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-programmatic-access-grant_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant_repository_selection.dart';
enum Organization-programmatic-access-grantRepositorySelection {
    none._('none'),
    all._('all'),
    subset._('subset'),
    ;

    const Organization-programmatic-access-grantRepositorySelection._(this.value);

    factory Organization-programmatic-access-grantRepositorySelection.fromJson(String json) {
        return Organization-programmatic-access-grantRepositorySelection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-programmatic-access-grantRepositorySelection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-programmatic-access-grantRepositorySelection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-programmatic-access-grantRepositorySelection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
