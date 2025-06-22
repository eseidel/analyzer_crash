import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-run_conclusion.dart';
import 'package:github/model/check-run_conclusion.dart';
enum Check-runConclusion {
    success._('success'),
    failure._('failure'),
    neutral._('neutral'),
    cancelled._('cancelled'),
    skipped._('skipped'),
    timedOut._('timed_out'),
    actionRequired._('action_required'),
    ;

    const Check-runConclusion._(this.value);

    factory Check-runConclusion.fromJson(String json) {
        return Check-runConclusion.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Check-runConclusion value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-runConclusion? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Check-runConclusion.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
