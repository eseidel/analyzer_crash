import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/workflow_state.dart';

enum WorkflowState {
  active._('active'),
  deleted._('deleted'),
  disabledFork._('disabled_fork'),
  disabledInactivity._('disabled_inactivity'),
  disabledManually._('disabled_manually');

  const WorkflowState._(this.value);

  factory WorkflowState.fromJson(String json) {
    return WorkflowState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown WorkflowState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return WorkflowState.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
