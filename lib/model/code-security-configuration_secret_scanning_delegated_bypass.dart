import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass.dart';
import 'package:github/model/code-security-configuration_secret_scanning_delegated_bypass.dart';
enum Code-security-configurationSecretScanningDelegatedBypass {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningDelegatedBypass._(this.value);

    factory Code-security-configurationSecretScanningDelegatedBypass.fromJson(String json) {
        return Code-security-configurationSecretScanningDelegatedBypass.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningDelegatedBypass value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningDelegatedBypass? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningDelegatedBypass.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
