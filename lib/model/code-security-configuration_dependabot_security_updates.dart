import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_dependabot_security_updates.dart';
import 'package:github/model/code-security-configuration_dependabot_security_updates.dart';
enum Code-security-configurationDependabotSecurityUpdates {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationDependabotSecurityUpdates._(this.value);

    factory Code-security-configurationDependabotSecurityUpdates.fromJson(String json) {
        return Code-security-configurationDependabotSecurityUpdates.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationDependabotSecurityUpdates value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationDependabotSecurityUpdates? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationDependabotSecurityUpdates.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
