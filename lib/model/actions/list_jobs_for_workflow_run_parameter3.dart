import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run_parameter3.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run_parameter3.dart';
enum Actions&#x2F;listJobsForWorkflowRunParameter3 {
    latest._('latest'),
    all._('all'),
    ;

    const Actions&#x2F;listJobsForWorkflowRunParameter3._(this.value);

    factory Actions&#x2F;listJobsForWorkflowRunParameter3.fromJson(String json) {
        return Actions&#x2F;listJobsForWorkflowRunParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;listJobsForWorkflowRunParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listJobsForWorkflowRunParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listJobsForWorkflowRunParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
