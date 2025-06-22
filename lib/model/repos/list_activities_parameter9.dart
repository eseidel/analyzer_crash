import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_activities_parameter9.dart';
import 'package:github/model/repos/list_activities_parameter9.dart';
enum Repos&#x2F;listActivitiesParameter9 {
    push._('push'),
    forcePush._('force_push'),
    branchCreation._('branch_creation'),
    branchDeletion._('branch_deletion'),
    prMerge._('pr_merge'),
    mergeQueueMerge._('merge_queue_merge'),
    ;

    const Repos&#x2F;listActivitiesParameter9._(this.value);

    factory Repos&#x2F;listActivitiesParameter9.fromJson(String json) {
        return Repos&#x2F;listActivitiesParameter9.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listActivitiesParameter9 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listActivitiesParameter9? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listActivitiesParameter9.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
