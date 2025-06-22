import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
enum Code-scanning-variant-analysisFailureReason {
    noReposQueried._('no_repos_queried'),
    actionsWorkflowRunFailed._('actions_workflow_run_failed'),
    internalError._('internal_error'),
    ;

    const Code-scanning-variant-analysisFailureReason._(this.value);

    factory Code-scanning-variant-analysisFailureReason.fromJson(String json) {
        return Code-scanning-variant-analysisFailureReason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-variant-analysisFailureReason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysisFailureReason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysisFailureReason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
