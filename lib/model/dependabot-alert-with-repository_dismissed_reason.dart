import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
import 'package:github/model/dependabot-alert-with-repository_dismissed_reason.dart';
enum Dependabot-alert-with-repositoryDismissedReason {
    fixStarted._('fix_started'),
    inaccurate._('inaccurate'),
    noBandwidth._('no_bandwidth'),
    notUsed._('not_used'),
    tolerableRisk._('tolerable_risk'),
    ;

    const Dependabot-alert-with-repositoryDismissedReason._(this.value);

    factory Dependabot-alert-with-repositoryDismissedReason.fromJson(String json) {
        return Dependabot-alert-with-repositoryDismissedReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-with-repositoryDismissedReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-with-repositoryDismissedReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-with-repositoryDismissedReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
