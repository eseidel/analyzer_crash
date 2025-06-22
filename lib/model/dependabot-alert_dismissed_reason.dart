import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
import 'package:github/model/dependabot-alert_dismissed_reason.dart';
enum Dependabot-alertDismissedReason {
    fixStarted._('fix_started'),
    inaccurate._('inaccurate'),
    noBandwidth._('no_bandwidth'),
    notUsed._('not_used'),
    tolerableRisk._('tolerable_risk'),
    ;

    const Dependabot-alertDismissedReason._(this.value);

    factory Dependabot-alertDismissedReason.fromJson(String json) {
        return Dependabot-alertDismissedReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alertDismissedReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alertDismissedReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alertDismissedReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
