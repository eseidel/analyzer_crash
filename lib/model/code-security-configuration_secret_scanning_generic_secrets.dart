import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_generic_secrets.dart';
import 'package:github/model/code-security-configuration_secret_scanning_generic_secrets.dart';
enum Code-security-configurationSecretScanningGenericSecrets {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningGenericSecrets._(this.value);

    factory Code-security-configurationSecretScanningGenericSecrets.fromJson(String json) {
        return Code-security-configurationSecretScanningGenericSecrets.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningGenericSecrets value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningGenericSecrets? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningGenericSecrets.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
