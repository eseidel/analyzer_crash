import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule.dart';
import 'package:github/model/repository-rule-creation.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-update.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-deletion.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-required-linear-history.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-merge-queue.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-required-deployments.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-required-signatures.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-pull-request.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-required-status-checks.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-non-fast-forward.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern.dart';
import 'package:github/model/repository-rule-commit-message-pattern_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-committer-email-pattern.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-branch-name-pattern.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-tag-name-pattern.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-file-path-restriction.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-max-file-path-length.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-file-extension-restriction.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-max-file-size.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-workflows.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-code-scanning.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule.dart';
import 'package:github/model/repository-rule-creation.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-update.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-deletion.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-required-linear-history.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-merge-queue.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-required-deployments.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-required-signatures.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-pull-request.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-required-status-checks.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-non-fast-forward.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern.dart';
import 'package:github/model/repository-rule-commit-message-pattern_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-committer-email-pattern.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-branch-name-pattern.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-tag-name-pattern.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-file-path-restriction.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-max-file-path-length.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-file-extension-restriction.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-max-file-size.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-workflows.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-code-scanning.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';

sealed class Repository-rule {
    static Repository-rule fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repository-rule.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repository-rule.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
