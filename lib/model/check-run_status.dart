import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-run_status.dart';
import 'package:github/model/check-run_status.dart';
enum Check-runStatus {
    queued._('queued'),
    inProgress._('in_progress'),
    completed._('completed'),
    waiting._('waiting'),
    requested._('requested'),
    pending._('pending'),
    ;

    const Check-runStatus._(this.value);

    factory Check-runStatus.fromJson(String json) {
        return Check-runStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Check-runStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-runStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Check-runStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
