import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning.dart';
import 'package:github/model/code_security/update_configuration_request_secret_scanning.dart';
enum CodeSecurity&#x2F;updateConfigurationRequestSecretScanning {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;updateConfigurationRequestSecretScanning._(this.value);

    factory CodeSecurity&#x2F;updateConfigurationRequestSecretScanning.fromJson(String json) {
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanning.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateConfigurationRequestSecretScanning value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateConfigurationRequestSecretScanning? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateConfigurationRequestSecretScanning.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
