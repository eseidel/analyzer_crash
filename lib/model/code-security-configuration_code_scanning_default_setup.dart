import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup.dart';
enum Code-security-configurationCodeScanningDefaultSetup {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationCodeScanningDefaultSetup._(this.value);

    factory Code-security-configurationCodeScanningDefaultSetup.fromJson(String json) {
        return Code-security-configurationCodeScanningDefaultSetup.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationCodeScanningDefaultSetup value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationCodeScanningDefaultSetup? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationCodeScanningDefaultSetup.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
