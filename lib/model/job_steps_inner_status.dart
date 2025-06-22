import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/job_steps_inner_status.dart';

enum JobStepsInnerStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed');

  const JobStepsInnerStatus._(this.value);

  factory JobStepsInnerStatus.fromJson(String json) {
    return JobStepsInnerStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown JobStepsInnerStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobStepsInnerStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return JobStepsInnerStatus.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
