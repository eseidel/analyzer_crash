import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert_state.dart';
import 'package:github/model/dependabot-alert_state.dart';
enum Dependabot-alertState {
    autoDismissed._('auto_dismissed'),
    dismissed._('dismissed'),
    fixed._('fixed'),
    open._('open'),
    ;

    const Dependabot-alertState._(this.value);

    factory Dependabot-alertState.fromJson(String json) {
        return Dependabot-alertState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alertState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alertState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alertState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
