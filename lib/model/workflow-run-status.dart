import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run-status.dart';
import 'package:github/model/workflow-run-status.dart';
enum Workflow-run-status {
    completed._('completed'),
    actionRequired._('action_required'),
    cancelled._('cancelled'),
    failure._('failure'),
    neutral._('neutral'),
    skipped._('skipped'),
    stale._('stale'),
    success._('success'),
    timedOut._('timed_out'),
    inProgress._('in_progress'),
    queued._('queued'),
    requested._('requested'),
    waiting._('waiting'),
    pending._('pending'),
    ;

    const Workflow-run-status._(this.value);

    factory Workflow-run-status.fromJson(String json) {
        return Workflow-run-status.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Workflow-run-status value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run-status? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run-status.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
