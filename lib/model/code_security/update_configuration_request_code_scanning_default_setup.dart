import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_configuration_request_code_scanning_default_setup.dart';
import 'package:github/model/code_security/update_configuration_request_code_scanning_default_setup.dart';
enum CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup._(this.value);

    factory CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup.fromJson(String json) {
        return CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateConfigurationRequestCodeScanningDefaultSetup.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
