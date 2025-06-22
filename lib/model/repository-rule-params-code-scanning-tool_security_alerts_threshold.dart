import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
enum Repository-rule-params-code-scanning-toolSecurityAlertsThreshold {
    none._('none'),
    critical._('critical'),
    highOrHigher._('high_or_higher'),
    mediumOrHigher._('medium_or_higher'),
    all._('all'),
    ;

    const Repository-rule-params-code-scanning-toolSecurityAlertsThreshold._(this.value);

    factory Repository-rule-params-code-scanning-toolSecurityAlertsThreshold.fromJson(String json) {
        return Repository-rule-params-code-scanning-toolSecurityAlertsThreshold.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-params-code-scanning-toolSecurityAlertsThreshold value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-params-code-scanning-toolSecurityAlertsThreshold? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-params-code-scanning-toolSecurityAlertsThreshold.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
