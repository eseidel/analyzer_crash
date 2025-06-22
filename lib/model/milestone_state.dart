import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/milestone_state.dart';
import 'package:github/model/milestone_state.dart';

enum MilestoneState {
  open._('open'),
  closed._('closed');

  const MilestoneState._(this.value);

  factory MilestoneState.fromJson(String json) {
    return MilestoneState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown MilestoneState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MilestoneState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return MilestoneState.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
