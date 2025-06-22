import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_validity_checks.dart';
import 'package:github/model/code-security-configuration_secret_scanning_validity_checks.dart';
enum Code-security-configurationSecretScanningValidityChecks {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningValidityChecks._(this.value);

    factory Code-security-configurationSecretScanningValidityChecks.fromJson(String json) {
        return Code-security-configurationSecretScanningValidityChecks.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningValidityChecks value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningValidityChecks? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningValidityChecks.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
