import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/update_alert_request_dismissed_reason.dart';
import 'package:github/model/dependabot/update_alert_request_dismissed_reason.dart';
enum Dependabot&#x2F;updateAlertRequestDismissedReason {
    fixStarted._('fix_started'),
    inaccurate._('inaccurate'),
    noBandwidth._('no_bandwidth'),
    notUsed._('not_used'),
    tolerableRisk._('tolerable_risk'),
    ;

    const Dependabot&#x2F;updateAlertRequestDismissedReason._(this.value);

    factory Dependabot&#x2F;updateAlertRequestDismissedReason.fromJson(String json) {
        return Dependabot&#x2F;updateAlertRequestDismissedReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot&#x2F;updateAlertRequestDismissedReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;updateAlertRequestDismissedReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;updateAlertRequestDismissedReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
