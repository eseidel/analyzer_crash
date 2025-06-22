import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/attach_configuration_request_scope.dart';
import 'package:github/model/code_security/attach_configuration_request_scope.dart';
enum CodeSecurity&#x2F;attachConfigurationRequestScope {
    all._('all'),
    allWithoutConfigurations._('all_without_configurations'),
    public._('public'),
    privateOrInternal._('private_or_internal'),
    selected._('selected'),
    ;

    const CodeSecurity&#x2F;attachConfigurationRequestScope._(this.value);

    factory CodeSecurity&#x2F;attachConfigurationRequestScope.fromJson(String json) {
        return CodeSecurity&#x2F;attachConfigurationRequestScope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;attachConfigurationRequestScope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;attachConfigurationRequestScope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;attachConfigurationRequestScope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
