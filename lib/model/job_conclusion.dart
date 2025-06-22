import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_conclusion.dart';

enum JobConclusion {
  success._('success'),
  failure._('failure'),
  neutral._('neutral'),
  cancelled._('cancelled'),
  skipped._('skipped'),
  timedOut._('timed_out'),
  actionRequired._('action_required');

  const JobConclusion._(this.value);

  factory JobConclusion.fromJson(String json) {
    return JobConclusion.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown JobConclusion value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobConclusion? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return JobConclusion.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
