import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_dependabot_alerts.dart';
import 'package:github/model/code-security-configuration_dependabot_alerts.dart';
enum Code-security-configurationDependabotAlerts {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const Code-security-configurationDependabotAlerts._(this.value);

    factory Code-security-configurationDependabotAlerts.fromJson(String json) {
        return Code-security-configurationDependabotAlerts.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationDependabotAlerts value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationDependabotAlerts? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationDependabotAlerts.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
