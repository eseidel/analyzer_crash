import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/create_configuration_request_enforcement.dart';
import 'package:github/model/code_security/create_configuration_request_enforcement.dart';
enum CodeSecurity&#x2F;createConfigurationRequestEnforcement {
    enforced._('enforced'),
    unenforced._('unenforced'),
    ;

    const CodeSecurity&#x2F;createConfigurationRequestEnforcement._(this.value);

    factory CodeSecurity&#x2F;createConfigurationRequestEnforcement.fromJson(String json) {
        return CodeSecurity&#x2F;createConfigurationRequestEnforcement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;createConfigurationRequestEnforcement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;createConfigurationRequestEnforcement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;createConfigurationRequestEnforcement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
