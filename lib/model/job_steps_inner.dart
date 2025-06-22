import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';

@immutable
class JobStepsInner {
  JobStepsInner({
    required this.status,
    required this.conclusion,
    required this.name,
    required this.number,
    this.started_at,
    this.completed_at,
  });

  factory JobStepsInner.fromJson(Map<String, dynamic> json) {
    return JobStepsInner(
      status: JobStepsInnerStatus.fromJson(json['status'] as String),
      conclusion: json['conclusion'] as String,
      name: json['name'] as String,
      number: (json['number'] as int).toInt(),
      started_at: maybeParseDateTime(json['started_at'] as String?),
      completed_at: maybeParseDateTime(json['completed_at'] as String?),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobStepsInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return JobStepsInner.fromJson(json);
  }

  final JobStepsInnerStatus status;
  final String conclusion;
  final String name;
  final int number;
  final DateTime? started_at;
  final DateTime? completed_at;

  Map<String, dynamic> toJson() {
    return {
      'status': status.toJson(),
      'conclusion': conclusion,
      'name': name,
      'number': number,
      'started_at': started_at?.toIso8601String(),
      'completed_at': completed_at?.toIso8601String(),
    };
  }

  @override
  int get hashCode =>
      Object.hash(status, conclusion, name, number, started_at, completed_at);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is JobStepsInner &&
        status == other.status &&
        conclusion == other.conclusion &&
        name == other.name &&
        number == other.number &&
        started_at == other.started_at &&
        completed_at == other.completed_at;
  }
}
