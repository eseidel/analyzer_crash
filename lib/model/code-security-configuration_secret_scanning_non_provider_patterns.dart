import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code-security-configuration_secret_scanning_non_provider_patterns.dart';
enum Code-security-configurationSecretScanningNonProviderPatterns {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationSecretScanningNonProviderPatterns._(this.value);

    factory Code-security-configurationSecretScanningNonProviderPatterns.fromJson(String json) {
        return Code-security-configurationSecretScanningNonProviderPatterns.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationSecretScanningNonProviderPatterns value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationSecretScanningNonProviderPatterns? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationSecretScanningNonProviderPatterns.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
