import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_security/update_configuration_request_dependabot_alerts.dart';
import 'package:github/model/code_security/update_configuration_request_dependabot_alerts.dart';
enum CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts {
    enabled._('enabled'),
    disabled._('disabled'),
    notSet._('not_set'),
    ;

    const CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts._(this.value);

    factory CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts.fromJson(String json) {
        return CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return CodeSecurity&#x2F;updateConfigurationRequestDependabotAlerts.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
