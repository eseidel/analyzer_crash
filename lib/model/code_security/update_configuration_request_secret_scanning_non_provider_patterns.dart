import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning_non_provider_patterns.dart';
enum CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns._(this.value);

    factory CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(String json) {
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
