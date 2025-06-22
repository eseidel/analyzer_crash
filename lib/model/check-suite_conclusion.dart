import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-suite_conclusion.dart';
import 'package:github/model/check-suite_conclusion.dart';
enum Check-suiteConclusion {
    success._('success'),
    failure._('failure'),
    neutral._('neutral'),
    cancelled._('cancelled'),
    skipped._('skipped'),
    timedOut._('timed_out'),
    actionRequired._('action_required'),
    startupFailure._('startup_failure'),
    stale._('stale'),
    ;

    const Check-suiteConclusion._(this.value);

    factory Check-suiteConclusion.fromJson(String json) {
        return Check-suiteConclusion.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Check-suiteConclusion value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-suiteConclusion? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Check-suiteConclusion.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
