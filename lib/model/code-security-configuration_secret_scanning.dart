import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning.dart';
import 'package:github/model/code-security-configuration_secret_scanning.dart';
enum Code-security-configurationSecretScanning {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanning._(this.value);

    factory Code-security-configurationSecretScanning.fromJson(String json) {
        return Code-security-configurationSecretScanning.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanning value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanning? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanning.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
