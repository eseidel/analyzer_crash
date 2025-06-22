import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
enum Repository-rule-params-code-scanning-toolAlertsThreshold {
    none._('none'),
    errors._('errors'),
    errorsAndWarnings._('errors_and_warnings'),
    all._('all'),
    ;

    const Repository-rule-params-code-scanning-toolAlertsThreshold._(this.value);

    factory Repository-rule-params-code-scanning-toolAlertsThreshold.fromJson(String json) {
        return Repository-rule-params-code-scanning-toolAlertsThreshold.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-params-code-scanning-toolAlertsThreshold value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-params-code-scanning-toolAlertsThreshold? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-params-code-scanning-toolAlertsThreshold.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
