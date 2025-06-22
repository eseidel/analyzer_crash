import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
enum Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType {
    standard._('standard'),
    labeled._('labeled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType._(this.value);

    factory Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType.fromJson(String json) {
        return Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
