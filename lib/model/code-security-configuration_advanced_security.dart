import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_advanced_security.dart';
import 'package:github/model/code-security-configuration_advanced_security.dart';
enum Code-security-configurationAdvancedSecurity {
    enabled._('enabled'),
    disabled._('disabled'),
    codeSecurity._('code_security'),
    secretProtection._('secret_protection'),
    ;

    const Code-security-configurationAdvancedSecurity._(this.value);

    factory Code-security-configurationAdvancedSecurity.fromJson(String json) {
        return Code-security-configurationAdvancedSecurity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationAdvancedSecurity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationAdvancedSecurity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationAdvancedSecurity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
