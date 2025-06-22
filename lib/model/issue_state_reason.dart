import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue_state_reason.dart';
import 'package:github/model/issue_state_reason.dart';

enum IssueStateReason {
  completed._('completed'),
  reopened._('reopened'),
  notPlanned._('not_planned');

  const IssueStateReason._(this.value);

  factory IssueStateReason.fromJson(String json) {
    return IssueStateReason.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown IssueStateReason value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssueStateReason? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssueStateReason.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
