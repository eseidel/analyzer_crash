import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/create_configuration_request_secret_scanning_non_provider_patterns.dart';
enum CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns._(this.value);

    factory CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns.fromJson(String json) {
        return CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationRequestSecretScanningNonProviderPatterns.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
