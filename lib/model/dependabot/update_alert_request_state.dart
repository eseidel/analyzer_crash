import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/update_alert_request_state.dart';
import 'package:github/model/dependabot/update_alert_request_state.dart';
enum Dependabot&#x2F;updateAlertRequestState {
    dismissed._('dismissed'),
    open._('open'),
    ;

    const Dependabot&#x2F;updateAlertRequestState._(this.value);

    factory Dependabot&#x2F;updateAlertRequestState.fromJson(String json) {
        return Dependabot&#x2F;updateAlertRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot&#x2F;updateAlertRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;updateAlertRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;updateAlertRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
