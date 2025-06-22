import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-suite_status.dart';
import 'package:github/model/check-suite_status.dart';
enum Check-suiteStatus {
    queued._('queued'),
    inProgress._('in_progress'),
    completed._('completed'),
    waiting._('waiting'),
    requested._('requested'),
    pending._('pending'),
    ;

    const Check-suiteStatus._(this.value);

    factory Check-suiteStatus.fromJson(String json) {
        return Check-suiteStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Check-suiteStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-suiteStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Check-suiteStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
