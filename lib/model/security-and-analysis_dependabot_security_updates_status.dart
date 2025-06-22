import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
enum Security-and-analysisDependabotSecurityUpdatesStatus {
    enabled._('enabled'),
    disabled._('disabled'),
    ;

    const Security-and-analysisDependabotSecurityUpdatesStatus._(this.value);

    factory Security-and-analysisDependabotSecurityUpdatesStatus.fromJson(String json) {
        return Security-and-analysisDependabotSecurityUpdatesStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-and-analysisDependabotSecurityUpdatesStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisDependabotSecurityUpdatesStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisDependabotSecurityUpdatesStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
