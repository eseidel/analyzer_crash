import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_advanced_security.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_advanced_security.dart';
enum CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity {
    enabled._('enabled'),
    disabled._('disabled'),
    codeSecurity._('code_security'),
    secretProtection._('secret_protection'),
    ;

    const CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity._(this.value);

    factory CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(String json) {
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
