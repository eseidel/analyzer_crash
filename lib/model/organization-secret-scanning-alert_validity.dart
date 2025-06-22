import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
enum Organization-secret-scanning-alertValidity {
    active._('active'),
    inactive._('inactive'),
    unknown._('unknown'),
    ;

    const Organization-secret-scanning-alertValidity._(this.value);

    factory Organization-secret-scanning-alertValidity.fromJson(String json) {
        return Organization-secret-scanning-alertValidity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-secret-scanning-alertValidity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-secret-scanning-alertValidity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-secret-scanning-alertValidity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
