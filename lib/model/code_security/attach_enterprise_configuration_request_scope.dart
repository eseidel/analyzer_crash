import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request_scope.dart';
import 'package:github/model/code_security/attach_enterprise_configuration_request_scope.dart';
enum CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope {
    all._('all'),
    allWithoutConfigurations._('all_without_configurations'),
    ;

    const CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope._(this.value);

    factory CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope.fromJson(String json) {
        return CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;attachEnterpriseConfigurationRequestScope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
