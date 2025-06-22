import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_push_protection.dart';
import 'package:github/model/code-security-configuration_secret_scanning_push_protection.dart';
enum Code-security-configurationSecretScanningPushProtection {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningPushProtection._(this.value);

    factory Code-security-configurationSecretScanningPushProtection.fromJson(String json) {
        return Code-security-configurationSecretScanningPushProtection.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningPushProtection value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningPushProtection? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningPushProtection.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
