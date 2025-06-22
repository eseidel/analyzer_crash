import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity_activity_type.dart';
import 'package:github/model/activity_activity_type.dart';

enum ActivityActivityType {
  push._('push'),
  forcePush._('force_push'),
  branchDeletion._('branch_deletion'),
  branchCreation._('branch_creation'),
  prMerge._('pr_merge'),
  mergeQueueMerge._('merge_queue_merge');

  const ActivityActivityType._(this.value);

  factory ActivityActivityType.fromJson(String json) {
    return ActivityActivityType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown ActivityActivityType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActivityActivityType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActivityActivityType.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
