import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_target_type.dart';
import 'package:github/model/code-security-configuration_target_type.dart';
enum Code-security-configurationTargetType {
    global._('global'),
    organization._('organization'),
    enterprise._('enterprise'),
    ;

    const Code-security-configurationTargetType._(this.value);

    factory Code-security-configurationTargetType.fromJson(String json) {
        return Code-security-configurationTargetType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationTargetType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationTargetType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationTargetType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
