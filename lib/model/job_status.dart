import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_status.dart';

enum JobStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed'),
  waiting._('waiting'),
  requested._('requested'),
  pending._('pending');

  const JobStatus._(this.value);

  factory JobStatus.fromJson(String json) {
    return JobStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown JobStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return JobStatus.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
