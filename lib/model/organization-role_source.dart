import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/organization-role_source.dart';
enum Organization-roleSource {
    organization._('Organization'),
    enterprise._('Enterprise'),
    predefined._('Predefined'),
    ;

    const Organization-roleSource._(this.value);

    factory Organization-roleSource.fromJson(String json) {
        return Organization-roleSource.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-roleSource value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-roleSource? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-roleSource.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
