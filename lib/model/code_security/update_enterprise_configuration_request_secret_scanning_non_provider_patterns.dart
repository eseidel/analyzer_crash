import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/code_security/update_enterprise_configuration_request_secret_scanning_non_provider_patterns.dart';
enum CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns._(this.value);

    factory CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.fromJson(String json) {
        return CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateEnterpriseConfigurationRequestSecretScanningNonProviderPatterns.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
