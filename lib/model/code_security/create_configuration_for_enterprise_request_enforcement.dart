import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_enforcement.dart';
import 'package:github/model/code_security/create_configuration_for_enterprise_request_enforcement.dart';
enum CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement {
    enforced._('enforced'),
    unenforced._('unenforced'),
    ;

    const CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement._(this.value);

    factory CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement.fromJson(String json) {
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationForEnterpriseRequestEnforcement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
