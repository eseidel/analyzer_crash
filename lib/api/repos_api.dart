import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/list_for_org_parameter1.dart';
import 'package:github/model/repos/list_for_org_parameter2.dart';
import 'package:github/model/repos/list_for_org_parameter3.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/create_in_org_request.dart';
import 'package:github/model/repos/create_in_org_request_visibility.dart';
import 'package:github/model/repos/create_in_org_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/create_in_org_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/create_in_org_request_merge_commit_title.dart';
import 'package:github/model/repos/create_in_org_request_merge_commit_message.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repos/create_org_ruleset_request.dart';
import 'package:github/model/repos/create_org_ruleset_request_target.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/time-period.dart';
import 'package:github/model/rule-suite-result.dart';
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repos/update_org_ruleset_request.dart';
import 'package:github/model/repos/update_org_ruleset_request_target.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/delete403_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/update_request.dart';
import 'package:github/model/repos/update_request_visibility.dart';
import 'package:github/model/repos/update_request_security_and_analysis.dart';
import 'package:github/model/repos/update_request_security_and_analysis_advanced_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/update_request_merge_commit_title.dart';
import 'package:github/model/repos/update_request_merge_commit_message.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/activity.dart';
import 'package:github/model/activity_activity_type.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/direction.dart';
import 'package:github/model/repos/list_activities_parameter8.dart';
import 'package:github/model/repos/list_activities_parameter9.dart';
import 'package:github/model/activity.dart';
import 'package:github/model/activity_activity_type.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repos/create_attestation_request.dart';
import 'package:github/model/repos/create_attestation_request_bundle.dart';
import 'package:github/model/repos/create_attestation201_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repos/create_attestation201_response.dart';
import 'package:github/model/repos/list_attestations200_response.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/repos/list_attestations200_response.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/repos/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/repos/create_autolink_request.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/check-automated-security-fixes.dart';
import 'package:github/model/check-automated-security-fixes.dart';
import 'package:github/model/short-branch.dart';
import 'package:github/model/short-branch_commit.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/short-branch.dart';
import 'package:github/model/short-branch_commit.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/repos/update_branch_protection_request.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/repos/update_branch_protection_request_restrictions.dart';
import 'package:github/model/protected-branch.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
import 'package:github/model/protected-branch_enforce_admins.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
import 'package:github/model/protected-branch_block_creations.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/protected-branch.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
import 'package:github/model/protected-branch_enforce_admins.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
import 'package:github/model/protected-branch_block_creations.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_dismissal_restrictions.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_bypass_pull_request_allowances.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/repos/update_status_check_protection_request.dart';
import 'package:github/model/repos/update_status_check_protection_request_checks_inner.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/add_status_check_contexts_request.dart';
import 'package:github/model/repos/add_status_check_contexts_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/set_status_check_contexts_request.dart';
import 'package:github/model/repos/set_status_check_contexts_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/remove_status_check_contexts_request.dart';
import 'package:github/model/repos/remove_status_check_contexts_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/repos/add_app_access_restrictions_request.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/repos/set_app_access_restrictions_request.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/repos/remove_app_access_restrictions_request.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/repos/add_team_access_restrictions_request.dart';
import 'package:github/model/repos/add_team_access_restrictions_request.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/repos/set_team_access_restrictions_request.dart';
import 'package:github/model/repos/set_team_access_restrictions_request.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/repos/remove_team_access_restrictions_request.dart';
import 'package:github/model/repos/remove_team_access_restrictions_request.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repos/add_user_access_restrictions_request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repos/set_user_access_restrictions_request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repos/remove_user_access_restrictions_request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repos/rename_branch_request.dart';
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/codeowners-errors.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
import 'package:github/model/codeowners-errors.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
import 'package:github/model/collaborator.dart';
import 'package:github/model/collaborator_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/list_collaborators_parameter2.dart';
import 'package:github/model/repos/list_collaborators_parameter3.dart';
import 'package:github/model/collaborator.dart';
import 'package:github/model/collaborator_permissions.dart';
import 'package:github/model/repos/add_collaborator_request.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/add_collaborator_response.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-collaborator-permission.dart';
import 'package:github/model/nullable-collaborator.dart';
import 'package:github/model/nullable-collaborator_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-collaborator-permission.dart';
import 'package:github/model/nullable-collaborator.dart';
import 'package:github/model/nullable-collaborator_permissions.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/update_commit_comment_request.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-short.dart';
import 'package:github/model/branch-short_commit.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/branch-short.dart';
import 'package:github/model/branch-short_commit.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/repos/create_commit_comment_request.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/combined-commit-status.dart';
import 'package:github/model/simple-commit-status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/combined-commit-status.dart';
import 'package:github/model/simple-commit-status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/community-profile.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/community-profile.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/commit-comparison.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit-comparison_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/commit-comparison.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit-comparison_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/repos/get_content200_response.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
import 'package:github/model/content-submodule.dart';
import 'package:github/model/content-submodule_type.dart';
import 'package:github/model/content-submodule_links.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/get_content200_response.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
import 'package:github/model/content-submodule.dart';
import 'package:github/model/content-submodule_type.dart';
import 'package:github/model/content-submodule_links.dart';
import 'package:github/model/repos/create_or_update_file_contents_request.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_committer.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_author.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repos/create_or_update_file_contents409_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/repos/delete_file_request.dart';
import 'package:github/model/repos/delete_file_request_committer.dart';
import 'package:github/model/repos/delete_file_request_author.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/contributor.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/list_contributors_response.dart';
import 'package:github/model/contributor.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/repos/create_deployment_request.dart';
import 'package:github/model/repos/create_deployment_request_payload.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/repos/create_deployment202_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repos/create_deployment_response.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/repos/create_deployment202_response.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/deployment.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/repos/create_deployment_status_request.dart';
import 'package:github/model/repos/create_deployment_status_request_state.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/repos/create_dispatch_event_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repos/get_all_environments200_response.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/repos/get_all_environments200_response.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/repos/create_or_update_environment_request.dart';
import 'package:github/model/repos/create_or_update_environment_request_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/repos/list_deployment_branch_policies200_response.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/repos/list_deployment_branch_policies200_response.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/repos/get_all_deployment_protection_rules200_response.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/get_all_deployment_protection_rules200_response.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/create_deployment_protection_rule_request.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/list_custom_deployment_rule_integrations200_response.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/repos/list_custom_deployment_rule_integrations200_response.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/list_forks_parameter2.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/create_fork_request.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/repos/create_webhook_request.dart';
import 'package:github/model/repos/create_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/update_webhook_request.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/repos/update_webhook_config_for_repo_request.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-delivery-item.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/hook-delivery-item.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/repos/update_invitation_request.dart';
import 'package:github/model/repos/update_invitation_request_permissions.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/repos/create_deploy_key_request.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/repos/merge_upstream_request.dart';
import 'package:github/model/merged-upstream.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
import 'package:github/model/merged-upstream.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
import 'package:github/model/repos/merge_request.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repos/merge_response.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/repos/create_pages_site_request.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/repos/update_information_about_pages_site_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build-status.dart';
import 'package:github/model/page-build-status.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repos/create_pages_deployment_request.dart';
import 'package:github/model/page-deployment.dart';
import 'package:github/model/page-deployment_id.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/page-deployment.dart';
import 'package:github/model/page-deployment_id.dart';
import 'package:github/model/pages-deployment-status.dart';
import 'package:github/model/pages-deployment-status_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pages-deployment-id.dart';
import 'package:github/model/pages-deployment-status.dart';
import 'package:github/model/pages-deployment-status_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pages-deployment-id.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/get_pages_health_check_response.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';
import 'package:github/model/repos/check_private_vulnerability_reporting200_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/check_private_vulnerability_reporting200_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/repos/create_or_update_custom_properties_values_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/repos/create_release_request.dart';
import 'package:github/model/repos/create_release_request_make_latest.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repos/update_release_asset_request.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repos/generate_release_notes_request.dart';
import 'package:github/model/release-notes-content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/release-notes-content.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/repos/update_release_request.dart';
import 'package:github/model/repos/update_release_request_make_latest.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-commit-message-pattern_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-merge-queue_type.dart';
import 'package:github/model/repository-rule-merge-queue_parameters.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_grouping_strategy.dart';
import 'package:github/model/repository-rule-merge-queue_parameters_merge_method.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-deployments_type.dart';
import 'package:github/model/repository-rule-required-deployments_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-required-status-checks_type.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-commit-message-pattern_type.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-message-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_parameters.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-rule-detailed.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_parameters.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_alerts_threshold.dart';
import 'package:github/model/repository-rule-params-code-scanning-tool_security_alerts_threshold.dart';
import 'package:github/model/repository-rule-ruleset-info_ruleset_source_type.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repos/create_repo_ruleset_request.dart';
import 'package:github/model/repos/create_repo_ruleset_request_target.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
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
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/time-period.dart';
import 'package:github/model/rule-suite-result.dart';
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/repos/update_repo_ruleset_request.dart';
import 'package:github/model/repos/update_repo_ruleset_request_target.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
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
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-ruleset.dart';
import 'package:github/model/repository-ruleset_target.dart';
import 'package:github/model/repository-ruleset_source_type.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset_current_user_can_bypass.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_conditions.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
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
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/repos/get_code_frequency_stats_response.dart';
import 'package:github/model/commit-activity.dart';
import 'package:github/model/repos/get_commit_activity_stats_response.dart';
import 'package:github/model/commit-activity.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
import 'package:github/model/repos/get_contributors_stats_response.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
import 'package:github/model/participation-stats.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/participation-stats.dart';
import 'package:github/model/repos/get_punch_card_stats_response.dart';
import 'package:github/model/repos/create_commit_status_request.dart';
import 'package:github/model/repos/create_commit_status_request_state.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/tag.dart';
import 'package:github/model/tag_commit.dart';
import 'package:github/model/tag.dart';
import 'package:github/model/tag_commit.dart';
import 'package:github/model/tag-protection.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/tag-protection.dart';
import 'package:github/model/repos/create_tag_protection_request.dart';
import 'package:github/model/tag-protection.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/tag-protection.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/repos/replace_all_topics_request.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/clone-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/per.dart';
import 'package:github/model/clone-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/content-traffic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/content-traffic.dart';
import 'package:github/model/referrer-traffic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/referrer-traffic.dart';
import 'package:github/model/view-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/per.dart';
import 'package:github/model/view-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/repos/transfer_request.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/create_using_template_request.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter0.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter2.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter3.dart';
import 'package:github/model/repos/list_for_authenticated_user_parameter4.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repos/create_for_authenticated_user_request.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_message.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/repos/list_for_user_parameter1.dart';
import 'package:github/model/repos/list_for_user_parameter2.dart';
import 'package:github/model/repos/list_for_user_parameter3.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
class ReposApi {
    ReposApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Minimal-repository>> repos/listForOrg(
        String org,
        { Repos/listForOrgParameter1? type = Repos/listForOrgParameter1.all,Repos/listForOrgParameter2? sort = Repos/listForOrgParameter2.created,Repos/listForOrgParameter3? direction,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/repos'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'type': ?type?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listForOrg');
    }
    Future<Full-repository> repos/createInOrg(
        String org,
        Repos/createInOrgRequest repos/createInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/repos'
            .replaceAll('{org}', "${ org }")
            ,
            body: repos/createInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createInOrg');
    }
    Future<List<Repository-ruleset>> repos/getOrgRulesets(
        String org,
        { int? perPage = 30,int? page = 1,String? targets, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'targets': ?targets.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-ruleset>((e) => Repository-ruleset.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getOrgRulesets');
    }
    Future<Repository-ruleset> repos/createOrgRuleset(
        String org,
        Repos/createOrgRulesetRequest repos/createOrgRulesetRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/rulesets'
            .replaceAll('{org}', "${ org }")
            ,
            body: repos/createOrgRulesetRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createOrgRuleset');
    }
    Future<List<Rule-suitesInner>> repos/getOrgRuleSuites(
        String org,
        { String? ref,String? repositoryName,Time-period? timePeriod = Time-period.day,String? actorName,Rule-suite-result? ruleSuiteResult = Rule-suite-result.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets/rule-suites'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
                'repository_name': ?repositoryName.toString(),
                'time_period': ?timePeriod?.toJson().toString(),
                'actor_name': ?actorName.toString(),
                'rule_suite_result': ?ruleSuiteResult?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Rule-suitesInner>((e) => Rule-suitesInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getOrgRuleSuites');
    }
    Future<Rule-suite> repos/getOrgRuleSuite(
        String org,
        int ruleSuiteId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets/rule-suites/{rule_suite_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{rule_suite_id}', "${ ruleSuiteId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Rule-suite.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getOrgRuleSuite');
    }
    Future<Repository-ruleset> repos/getOrgRuleset(
        String org,
        int rulesetId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/rulesets/{ruleset_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getOrgRuleset');
    }
    Future<Repository-ruleset> repos/updateOrgRuleset(
        String org,
        int rulesetId,
        { Repos/updateOrgRulesetRequest? repos/updateOrgRulesetRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/orgs/{org}/rulesets/{ruleset_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
            body: repos/updateOrgRulesetRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateOrgRuleset');
    }
    Future<void> repos/deleteOrgRuleset(
        String org,
        int rulesetId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/rulesets/{ruleset_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteOrgRuleset');
    }
    Future<Full-repository> repos/get(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/get');
    }
    Future<void> repos/delete(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/delete');
    }
    Future<Full-repository> repos/update(
        String owner,
        String repo,
        { Repos/updateRequest? repos/updateRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/updateRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/update');
    }
    Future<List<Activity>> repos/listActivities(
        String owner,
        String repo,
        { Direction? direction = Direction.desc,int? perPage = 30,String? before,String? after,String? ref,String? actor,Repos/listActivitiesParameter8? timePeriod,Repos/listActivitiesParameter9? activityType, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/activity'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'ref': ?ref.toString(),
                'actor': ?actor.toString(),
                'time_period': ?timePeriod?.toJson().toString(),
                'activity_type': ?activityType?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Activity>((e) => Activity.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listActivities');
    }
    Future<Repos/createAttestation201Response> repos/createAttestation(
        String owner,
        String repo,
        Repos/createAttestationRequest repos/createAttestationRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/attestations'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createAttestationRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/createAttestation201Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createAttestation');
    }
    Future<Repos/listAttestations200Response> repos/listAttestations(
        String owner,
        String repo,
        String subjectDigest,
        { int? perPage = 30,String? before,String? after,String? predicateType, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/attestations/{subject_digest}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{subject_digest}', "${ subjectDigest }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'predicate_type': ?predicateType.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/listAttestations200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listAttestations');
    }
    Future<List<Autolink>> repos/listAutolinks(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/autolinks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Autolink>((e) => Autolink.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listAutolinks');
    }
    Future<Autolink> repos/createAutolink(
        String owner,
        String repo,
        Repos/createAutolinkRequest repos/createAutolinkRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/autolinks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createAutolinkRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Autolink.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createAutolink');
    }
    Future<Autolink> repos/getAutolink(
        String owner,
        String repo,
        int autolinkId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/autolinks/{autolink_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{autolink_id}', "${ autolinkId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Autolink.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAutolink');
    }
    Future<void> repos/deleteAutolink(
        String owner,
        String repo,
        int autolinkId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/autolinks/{autolink_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{autolink_id}', "${ autolinkId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteAutolink');
    }
    Future<Check-automated-security-fixes> repos/checkAutomatedSecurityFixes(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/automated-security-fixes'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Check-automated-security-fixes.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/checkAutomatedSecurityFixes');
    }
    Future<void> repos/enableAutomatedSecurityFixes(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/automated-security-fixes'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/enableAutomatedSecurityFixes');
    }
    Future<void> repos/disableAutomatedSecurityFixes(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/automated-security-fixes'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/disableAutomatedSecurityFixes');
    }
    Future<List<Short-branch>> repos/listBranches(
        String owner,
        String repo,
        { bool? protected,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'protected': ?protected.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Short-branch>((e) => Short-branch.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listBranches');
    }
    Future<Branch-with-protection> repos/getBranch(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Branch-with-protection.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getBranch');
    }
    Future<Branch-protection> repos/getBranchProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Branch-protection.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getBranchProtection');
    }
    Future<Protected-branch> repos/updateBranchProtection(
        String owner,
        String repo,
        String branch,
        Repos/updateBranchProtectionRequest repos/updateBranchProtectionRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/updateBranchProtectionRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateBranchProtection');
    }
    Future<void> repos/deleteBranchProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteBranchProtection');
    }
    Future<Protected-branch-admin-enforced> repos/getAdminBranchProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-admin-enforced.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAdminBranchProtection');
    }
    Future<Protected-branch-admin-enforced> repos/setAdminBranchProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-admin-enforced.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/setAdminBranchProtection');
    }
    Future<void> repos/deleteAdminBranchProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteAdminBranchProtection');
    }
    Future<Protected-branch-pull-request-review> repos/getPullRequestReviewProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPullRequestReviewProtection');
    }
    Future<void> repos/deletePullRequestReviewProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deletePullRequestReviewProtection');
    }
    Future<Protected-branch-pull-request-review> repos/updatePullRequestReviewProtection(
        String owner,
        String repo,
        String branch,
        { Repos/updatePullRequestReviewProtectionRequest? repos/updatePullRequestReviewProtectionRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/updatePullRequestReviewProtectionRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updatePullRequestReviewProtection');
    }
    Future<Protected-branch-admin-enforced> repos/getCommitSignatureProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-admin-enforced.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCommitSignatureProtection');
    }
    Future<Protected-branch-admin-enforced> repos/createCommitSignatureProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Protected-branch-admin-enforced.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createCommitSignatureProtection');
    }
    Future<void> repos/deleteCommitSignatureProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteCommitSignatureProtection');
    }
    Future<Status-check-policy> repos/getStatusChecksProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Status-check-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getStatusChecksProtection');
    }
    Future<void> repos/removeStatusCheckProtection(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeStatusCheckProtection');
    }
    Future<Status-check-policy> repos/updateStatusCheckProtection(
        String owner,
        String repo,
        String branch,
        { Repos/updateStatusCheckProtectionRequest? repos/updateStatusCheckProtectionRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/updateStatusCheckProtectionRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Status-check-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateStatusCheckProtection');
    }
    Future<List<String>> repos/getAllStatusCheckContexts(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAllStatusCheckContexts');
    }
    Future<List<String>> repos/addStatusCheckContexts(
        String owner,
        String repo,
        String branch,
        { Repos/addStatusCheckContextsRequest? repos/addStatusCheckContextsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/addStatusCheckContextsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/addStatusCheckContexts');
    }
    Future<List<String>> repos/setStatusCheckContexts(
        String owner,
        String repo,
        String branch,
        { Repos/setStatusCheckContextsRequest? repos/setStatusCheckContextsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/setStatusCheckContextsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/setStatusCheckContexts');
    }
    Future<List<String>> repos/removeStatusCheckContexts(
        String owner,
        String repo,
        String branch,
        { Repos/removeStatusCheckContextsRequest? repos/removeStatusCheckContextsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/removeStatusCheckContextsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).cast<String>() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeStatusCheckContexts');
    }
    Future<Branch-restriction-policy> repos/getAccessRestrictions(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Branch-restriction-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAccessRestrictions');
    }
    Future<void> repos/deleteAccessRestrictions(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteAccessRestrictions');
    }
    Future<List<Integration>> repos/getAppsWithAccessToProtectedBranch(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Integration>((e) => Integration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAppsWithAccessToProtectedBranch');
    }
    Future<List<Integration>> repos/addAppAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/addAppAccessRestrictionsRequest repos/addAppAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/addAppAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Integration>((e) => Integration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/addAppAccessRestrictions');
    }
    Future<List<Integration>> repos/setAppAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/setAppAccessRestrictionsRequest repos/setAppAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/setAppAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Integration>((e) => Integration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/setAppAccessRestrictions');
    }
    Future<List<Integration>> repos/removeAppAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/removeAppAccessRestrictionsRequest repos/removeAppAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/removeAppAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Integration>((e) => Integration.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeAppAccessRestrictions');
    }
    Future<List<Team>> repos/getTeamsWithAccessToProtectedBranch(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getTeamsWithAccessToProtectedBranch');
    }
    Future<List<Team>> repos/addTeamAccessRestrictions(
        String owner,
        String repo,
        String branch,
        { Repos/addTeamAccessRestrictionsRequest? repos/addTeamAccessRestrictionsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/addTeamAccessRestrictionsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/addTeamAccessRestrictions');
    }
    Future<List<Team>> repos/setTeamAccessRestrictions(
        String owner,
        String repo,
        String branch,
        { Repos/setTeamAccessRestrictionsRequest? repos/setTeamAccessRestrictionsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/setTeamAccessRestrictionsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/setTeamAccessRestrictions');
    }
    Future<List<Team>> repos/removeTeamAccessRestrictions(
        String owner,
        String repo,
        String branch,
        { Repos/removeTeamAccessRestrictionsRequest? repos/removeTeamAccessRestrictionsRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/removeTeamAccessRestrictionsRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeTeamAccessRestrictions');
    }
    Future<List<Simple-user>> repos/getUsersWithAccessToProtectedBranch(
        String owner,
        String repo,
        String branch,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getUsersWithAccessToProtectedBranch');
    }
    Future<List<Simple-user>> repos/addUserAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/addUserAccessRestrictionsRequest repos/addUserAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/addUserAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/addUserAccessRestrictions');
    }
    Future<List<Simple-user>> repos/setUserAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/setUserAccessRestrictionsRequest repos/setUserAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/setUserAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/setUserAccessRestrictions');
    }
    Future<List<Simple-user>> repos/removeUserAccessRestrictions(
        String owner,
        String repo,
        String branch,
        Repos/removeUserAccessRestrictionsRequest repos/removeUserAccessRestrictionsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/removeUserAccessRestrictionsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeUserAccessRestrictions');
    }
    Future<Branch-with-protection> repos/renameBranch(
        String owner,
        String repo,
        String branch,
        Repos/renameBranchRequest repos/renameBranchRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/branches/{branch}/rename'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            body: repos/renameBranchRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Branch-with-protection.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/renameBranch');
    }
    Future<Codeowners-errors> repos/codeownersErrors(
        String owner,
        String repo,
        { String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/codeowners/errors'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Codeowners-errors.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/codeownersErrors');
    }
    Future<List<Collaborator>> repos/listCollaborators(
        String owner,
        String repo,
        { Repos/listCollaboratorsParameter2? affiliation = Repos/listCollaboratorsParameter2.all,Repos/listCollaboratorsParameter3? permission,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/collaborators'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'affiliation': ?affiliation?.toJson().toString(),
                'permission': ?permission?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Collaborator>((e) => Collaborator.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCollaborators');
    }
    Future<void> repos/checkCollaborator(
        String owner,
        String repo,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/collaborators/{username}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/checkCollaborator');
    }
    Future<Repos/addCollaboratorResponse> repos/addCollaborator(
        String owner,
        String repo,
        String username,
        { Repos/addCollaboratorRequest? repos/addCollaboratorRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/collaborators/{username}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: repos/addCollaboratorRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/addCollaboratorResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/addCollaborator');
    }
    Future<void> repos/removeCollaborator(
        String owner,
        String repo,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/collaborators/{username}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/removeCollaborator');
    }
    Future<Repository-collaborator-permission> repos/getCollaboratorPermissionLevel(
        String owner,
        String repo,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/collaborators/{username}/permission'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-collaborator-permission.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCollaboratorPermissionLevel');
    }
    Future<List<Commit-comment>> repos/listCommitCommentsForRepo(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Commit-comment>((e) => Commit-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCommitCommentsForRepo');
    }
    Future<Commit-comment> repos/getCommitComment(
        String owner,
        String repo,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Commit-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCommitComment');
    }
    Future<void> repos/deleteCommitComment(
        String owner,
        String repo,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteCommitComment');
    }
    Future<Commit-comment> repos/updateCommitComment(
        String owner,
        String repo,
        int commentId,
        Repos/updateCommitCommentRequest repos/updateCommitCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: repos/updateCommitCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Commit-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateCommitComment');
    }
    Future<List<Commit>> repos/listCommits(
        String owner,
        String repo,
        { String? sha,String? path,String? author,String? committer,DateTime? since,DateTime? until,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'sha': ?sha.toString(),
                'path': ?path.toString(),
                'author': ?author.toString(),
                'committer': ?committer.toString(),
                'since': ?since?.toIso8601String().toString(),
                'until': ?until?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Commit>((e) => Commit.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCommits');
    }
    Future<List<Branch-short>> repos/listBranchesForHeadCommit(
        String owner,
        String repo,
        String commitSha,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{commit_sha}', "${ commitSha }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Branch-short>((e) => Branch-short.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listBranchesForHeadCommit');
    }
    Future<List<Commit-comment>> repos/listCommentsForCommit(
        String owner,
        String repo,
        String commitSha,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{commit_sha}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{commit_sha}', "${ commitSha }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Commit-comment>((e) => Commit-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCommentsForCommit');
    }
    Future<Commit-comment> repos/createCommitComment(
        String owner,
        String repo,
        String commitSha,
        Repos/createCommitCommentRequest repos/createCommitCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/commits/{commit_sha}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{commit_sha}', "${ commitSha }")
            ,
            body: repos/createCommitCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Commit-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createCommitComment');
    }
    Future<List<Pull-request-simple>> repos/listPullRequestsAssociatedWithCommit(
        String owner,
        String repo,
        String commitSha,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{commit_sha}/pulls'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{commit_sha}', "${ commitSha }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pull-request-simple>((e) => Pull-request-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listPullRequestsAssociatedWithCommit');
    }
    Future<Commit> repos/getCommit(
        String owner,
        String repo,
        String ref,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCommit');
    }
    Future<Combined-commit-status> repos/getCombinedStatusForRef(
        String owner,
        String repo,
        String ref,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{ref}/status'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Combined-commit-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCombinedStatusForRef');
    }
    Future<List<Status>> repos/listCommitStatusesForRef(
        String owner,
        String repo,
        String ref,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/commits/{ref}/statuses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Status>((e) => Status.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCommitStatusesForRef');
    }
    Future<Community-profile> repos/getCommunityProfileMetrics(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/community/profile'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Community-profile.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCommunityProfileMetrics');
    }
    Future<Commit-comparison> repos/compareCommits(
        String owner,
        String repo,
        String basehead,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/compare/{basehead}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{basehead}', "${ basehead }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Commit-comparison.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/compareCommits');
    }
    Future<Repos/getContent200Response> repos/getContent(
        String owner,
        String repo,
        String path,
        { String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/contents/{path}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{path}', "${ path }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getContent200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getContent');
    }
    Future<File-commit> repos/createOrUpdateFileContents(
        String owner,
        String repo,
        String path,
        Repos/createOrUpdateFileContentsRequest repos/createOrUpdateFileContentsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/contents/{path}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{path}', "${ path }")
            ,
            body: repos/createOrUpdateFileContentsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return File-commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createOrUpdateFileContents');
    }
    Future<File-commit> repos/deleteFile(
        String owner,
        String repo,
        String path,
        Repos/deleteFileRequest repos/deleteFileRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/contents/{path}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{path}', "${ path }")
            ,
            body: repos/deleteFileRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return File-commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteFile');
    }
    Future<Repos/listContributorsResponse> repos/listContributors(
        String owner,
        String repo,
        { String? anon,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/contributors'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'anon': ?anon.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/listContributorsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listContributors');
    }
    Future<List<Deployment>> repos/listDeployments(
        String owner,
        String repo,
        { String? sha = none,String? ref = none,String? task = none,String? environment = none,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/deployments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'sha': ?sha.toString(),
                'ref': ?ref.toString(),
                'task': ?task.toString(),
                'environment': ?environment.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Deployment>((e) => Deployment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listDeployments');
    }
    Future<Repos/createDeploymentResponse> repos/createDeployment(
        String owner,
        String repo,
        Repos/createDeploymentRequest repos/createDeploymentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/deployments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createDeploymentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/createDeploymentResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDeployment');
    }
    Future<Deployment> repos/getDeployment(
        String owner,
        String repo,
        int deploymentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/deployments/{deployment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{deployment_id}', "${ deploymentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getDeployment');
    }
    Future<void> repos/deleteDeployment(
        String owner,
        String repo,
        int deploymentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/deployments/{deployment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{deployment_id}', "${ deploymentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteDeployment');
    }
    Future<List<Deployment-status>> repos/listDeploymentStatuses(
        String owner,
        String repo,
        int deploymentId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{deployment_id}', "${ deploymentId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Deployment-status>((e) => Deployment-status.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listDeploymentStatuses');
    }
    Future<Deployment-status> repos/createDeploymentStatus(
        String owner,
        String repo,
        int deploymentId,
        Repos/createDeploymentStatusRequest repos/createDeploymentStatusRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{deployment_id}', "${ deploymentId }")
            ,
            body: repos/createDeploymentStatusRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDeploymentStatus');
    }
    Future<Deployment-status> repos/getDeploymentStatus(
        String owner,
        String repo,
        int deploymentId,
        int statusId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/deployments/{deployment_id}/statuses/{status_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{deployment_id}', "${ deploymentId }")
                        .replaceAll('{status_id}', "${ statusId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getDeploymentStatus');
    }
    Future<void> repos/createDispatchEvent(
        String owner,
        String repo,
        Repos/createDispatchEventRequest repos/createDispatchEventRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/dispatches'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createDispatchEventRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDispatchEvent');
    }
    Future<Repos/getAllEnvironments200Response> repos/getAllEnvironments(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getAllEnvironments200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAllEnvironments');
    }
    Future<Environment> repos/getEnvironment(
        String owner,
        String repo,
        String environmentName,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Environment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getEnvironment');
    }
    Future<Environment> repos/createOrUpdateEnvironment(
        String owner,
        String repo,
        String environmentName,
        { Repos/createOrUpdateEnvironmentRequest? repos/createOrUpdateEnvironmentRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/environments/{environment_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
            body: repos/createOrUpdateEnvironmentRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Environment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createOrUpdateEnvironment');
    }
    Future<void> repos/deleteAnEnvironment(
        String owner,
        String repo,
        String environmentName,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/environments/{environment_name}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteAnEnvironment');
    }
    Future<Repos/listDeploymentBranchPolicies200Response> repos/listDeploymentBranchPolicies(
        String owner,
        String repo,
        String environmentName,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/listDeploymentBranchPolicies200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listDeploymentBranchPolicies');
    }
    Future<Deployment-branch-policy> repos/createDeploymentBranchPolicy(
        String owner,
        String repo,
        String environmentName,
        Deployment-branch-policy-name-pattern-with-type deployment-branch-policy-name-pattern-with-type,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
            ,
            body: deployment-branch-policy-name-pattern-with-type.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-branch-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDeploymentBranchPolicy');
    }
    Future<Deployment-branch-policy> repos/getDeploymentBranchPolicy(
        String owner,
        String repo,
        String environmentName,
        int branchPolicyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{branch_policy_id}', "${ branchPolicyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-branch-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getDeploymentBranchPolicy');
    }
    Future<Deployment-branch-policy> repos/updateDeploymentBranchPolicy(
        String owner,
        String repo,
        String environmentName,
        int branchPolicyId,
        Deployment-branch-policy-name-pattern deployment-branch-policy-name-pattern,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{branch_policy_id}', "${ branchPolicyId }")
            ,
            body: deployment-branch-policy-name-pattern.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-branch-policy.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateDeploymentBranchPolicy');
    }
    Future<void> repos/deleteDeploymentBranchPolicy(
        String owner,
        String repo,
        String environmentName,
        int branchPolicyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment-branch-policies/{branch_policy_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{branch_policy_id}', "${ branchPolicyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteDeploymentBranchPolicy');
    }
    Future<Repos/getAllDeploymentProtectionRules200Response> repos/getAllDeploymentProtectionRules(
        String environmentName,
        String repo,
        String owner,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules'
            .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{owner}', "${ owner }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getAllDeploymentProtectionRules200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAllDeploymentProtectionRules');
    }
    Future<Deployment-protection-rule> repos/createDeploymentProtectionRule(
        String environmentName,
        String repo,
        String owner,
        Repos/createDeploymentProtectionRuleRequest repos/createDeploymentProtectionRuleRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules'
            .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{owner}', "${ owner }")
            ,
            body: repos/createDeploymentProtectionRuleRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-protection-rule.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDeploymentProtectionRule');
    }
    Future<Repos/listCustomDeploymentRuleIntegrations200Response> repos/listCustomDeploymentRuleIntegrations(
        String environmentName,
        String repo,
        String owner,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/apps'
            .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{owner}', "${ owner }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/listCustomDeploymentRuleIntegrations200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listCustomDeploymentRuleIntegrations');
    }
    Future<Deployment-protection-rule> repos/getCustomDeploymentProtectionRule(
        String owner,
        String repo,
        String environmentName,
        int protectionRuleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{protection_rule_id}', "${ protectionRuleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deployment-protection-rule.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCustomDeploymentProtectionRule');
    }
    Future<void> repos/disableDeploymentProtectionRule(
        String environmentName,
        String repo,
        String owner,
        int protectionRuleId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/environments/{environment_name}/deployment_protection_rules/{protection_rule_id}'
            .replaceAll('{environment_name}', "${ environmentName }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{protection_rule_id}', "${ protectionRuleId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/disableDeploymentProtectionRule');
    }
    Future<List<Minimal-repository>> repos/listForks(
        String owner,
        String repo,
        { Repos/listForksParameter2? sort = Repos/listForksParameter2.newest,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/forks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'sort': ?sort?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listForks');
    }
    Future<Full-repository> repos/createFork(
        String owner,
        String repo,
        { Repos/createForkRequest? repos/createForkRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/forks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createForkRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createFork');
    }
    Future<List<Hook>> repos/listWebhooks(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/hooks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Hook>((e) => Hook.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listWebhooks');
    }
    Future<Hook> repos/createWebhook(
        String owner,
        String repo,
        { Repos/createWebhookRequest? repos/createWebhookRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/hooks'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createWebhookRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createWebhook');
    }
    Future<Hook> repos/getWebhook(
        String owner,
        String repo,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getWebhook');
    }
    Future<void> repos/deleteWebhook(
        String owner,
        String repo,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteWebhook');
    }
    Future<Hook> repos/updateWebhook(
        String owner,
        String repo,
        int hookId,
        Repos/updateWebhookRequest repos/updateWebhookRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
            body: repos/updateWebhookRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateWebhook');
    }
    Future<Webhook-config> repos/getWebhookConfigForRepo(
        String owner,
        String repo,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/config'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getWebhookConfigForRepo');
    }
    Future<Webhook-config> repos/updateWebhookConfigForRepo(
        String owner,
        String repo,
        int hookId,
        { Repos/updateWebhookConfigForRepoRequest? repos/updateWebhookConfigForRepoRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/config'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
            body: repos/updateWebhookConfigForRepoRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Webhook-config.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateWebhookConfigForRepo');
    }
    Future<List<Hook-delivery-item>> repos/listWebhookDeliveries(
        String owner,
        String repo,
        int hookId,
        { int? perPage = 30,String? cursor, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'cursor': ?cursor.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Hook-delivery-item>((e) => Hook-delivery-item.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listWebhookDeliveries');
    }
    Future<Hook-delivery> repos/getWebhookDelivery(
        String owner,
        String repo,
        int hookId,
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
                        .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hook-delivery.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getWebhookDelivery');
    }
    Future<dynamic> repos/redeliverWebhookDelivery(
        String owner,
        String repo,
        int hookId,
        int deliveryId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}/attempts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
                        .replaceAll('{delivery_id}', "${ deliveryId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/redeliverWebhookDelivery');
    }
    Future<void> repos/pingWebhook(
        String owner,
        String repo,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/pings'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/pingWebhook');
    }
    Future<void> repos/testPushWebhook(
        String owner,
        String repo,
        int hookId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/hooks/{hook_id}/tests'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{hook_id}', "${ hookId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/testPushWebhook');
    }
    Future<List<Repository-invitation>> repos/listInvitations(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/invitations'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-invitation>((e) => Repository-invitation.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listInvitations');
    }
    Future<void> repos/deleteInvitation(
        String owner,
        String repo,
        int invitationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/invitations/{invitation_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{invitation_id}', "${ invitationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteInvitation');
    }
    Future<Repository-invitation> repos/updateInvitation(
        String owner,
        String repo,
        int invitationId,
        { Repos/updateInvitationRequest? repos/updateInvitationRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/invitations/{invitation_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{invitation_id}', "${ invitationId }")
            ,
            body: repos/updateInvitationRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-invitation.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateInvitation');
    }
    Future<List<Deploy-key>> repos/listDeployKeys(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/keys'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Deploy-key>((e) => Deploy-key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listDeployKeys');
    }
    Future<Deploy-key> repos/createDeployKey(
        String owner,
        String repo,
        Repos/createDeployKeyRequest repos/createDeployKeyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/keys'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createDeployKeyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deploy-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createDeployKey');
    }
    Future<Deploy-key> repos/getDeployKey(
        String owner,
        String repo,
        int keyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/keys/{key_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{key_id}', "${ keyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Deploy-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getDeployKey');
    }
    Future<void> repos/deleteDeployKey(
        String owner,
        String repo,
        int keyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/keys/{key_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{key_id}', "${ keyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteDeployKey');
    }
    Future<Map<String, int>> repos/listLanguages(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/languages'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return jsonDecode(response.body).map((key, value) => MapEntry(key, (value as int).toInt() )).toMap();
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listLanguages');
    }
    Future<Merged-upstream> repos/mergeUpstream(
        String owner,
        String repo,
        Repos/mergeUpstreamRequest repos/mergeUpstreamRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/merge-upstream'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/mergeUpstreamRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Merged-upstream.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/mergeUpstream');
    }
    Future<Repos/mergeResponse> repos/merge(
        String owner,
        String repo,
        Repos/mergeRequest repos/mergeRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/merges'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/mergeRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/mergeResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/merge');
    }
    Future<Page> repos/getPages(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPages');
    }
    Future<Page> repos/createPagesSite(
        String owner,
        String repo,
        Repos/createPagesSiteRequest repos/createPagesSiteRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pages'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createPagesSiteRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createPagesSite');
    }
    Future<void> repos/updateInformationAboutPagesSite(
        String owner,
        String repo,
        Repos/updateInformationAboutPagesSiteRequest repos/updateInformationAboutPagesSiteRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/pages'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/updateInformationAboutPagesSiteRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateInformationAboutPagesSite');
    }
    Future<void> repos/deletePagesSite(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/pages'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deletePagesSite');
    }
    Future<List<Page-build>> repos/listPagesBuilds(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages/builds'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Page-build>((e) => Page-build.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listPagesBuilds');
    }
    Future<Page-build-status> repos/requestPagesBuild(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pages/builds'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page-build-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/requestPagesBuild');
    }
    Future<Page-build> repos/getLatestPagesBuild(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages/builds/latest'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page-build.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getLatestPagesBuild');
    }
    Future<Page-build> repos/getPagesBuild(
        String owner,
        String repo,
        int buildId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages/builds/{build_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{build_id}', "${ buildId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page-build.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPagesBuild');
    }
    Future<Page-deployment> repos/createPagesDeployment(
        String owner,
        String repo,
        Repos/createPagesDeploymentRequest repos/createPagesDeploymentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pages/deployments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createPagesDeploymentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Page-deployment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createPagesDeployment');
    }
    Future<Pages-deployment-status> repos/getPagesDeployment(
        String owner,
        String repo,
        Pages-deployment-id pagesDeploymentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pages_deployment_id}', "${ pagesDeploymentId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pages-deployment-status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPagesDeployment');
    }
    Future<void> repos/cancelPagesDeployment(
        String owner,
        String repo,
        Pages-deployment-id pagesDeploymentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pages/deployments/{pages_deployment_id}/cancel'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pages_deployment_id}', "${ pagesDeploymentId.toJson() }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/cancelPagesDeployment');
    }
    Future<Repos/getPagesHealthCheckResponse> repos/getPagesHealthCheck(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pages/health'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getPagesHealthCheckResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPagesHealthCheck');
    }
    Future<Repos/checkPrivateVulnerabilityReporting200Response> repos/checkPrivateVulnerabilityReporting(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/private-vulnerability-reporting'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/checkPrivateVulnerabilityReporting200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/checkPrivateVulnerabilityReporting');
    }
    Future<void> repos/enablePrivateVulnerabilityReporting(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/private-vulnerability-reporting'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/enablePrivateVulnerabilityReporting');
    }
    Future<void> repos/disablePrivateVulnerabilityReporting(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/private-vulnerability-reporting'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/disablePrivateVulnerabilityReporting');
    }
    Future<List<Custom-property-value>> repos/getCustomPropertiesValues(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/properties/values'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Custom-property-value>((e) => Custom-property-value.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCustomPropertiesValues');
    }
    Future<void> repos/createOrUpdateCustomPropertiesValues(
        String owner,
        String repo,
        Repos/createOrUpdateCustomPropertiesValuesRequest repos/createOrUpdateCustomPropertiesValuesRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/properties/values'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createOrUpdateCustomPropertiesValuesRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createOrUpdateCustomPropertiesValues');
    }
    Future<Content-file> repos/getReadme(
        String owner,
        String repo,
        { String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/readme'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Content-file.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getReadme');
    }
    Future<Content-file> repos/getReadmeInDirectory(
        String owner,
        String repo,
        String dir,
        { String? ref, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/readme/{dir}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{dir}', "${ dir }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Content-file.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getReadmeInDirectory');
    }
    Future<List<Release>> repos/listReleases(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Release>((e) => Release.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listReleases');
    }
    Future<Release> repos/createRelease(
        String owner,
        String repo,
        Repos/createReleaseRequest repos/createReleaseRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/releases'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createReleaseRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createRelease');
    }
    Future<Release-asset> repos/getReleaseAsset(
        String owner,
        String repo,
        int assetId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/assets/{asset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{asset_id}', "${ assetId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release-asset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getReleaseAsset');
    }
    Future<void> repos/deleteReleaseAsset(
        String owner,
        String repo,
        int assetId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/releases/assets/{asset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{asset_id}', "${ assetId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteReleaseAsset');
    }
    Future<Release-asset> repos/updateReleaseAsset(
        String owner,
        String repo,
        int assetId,
        { Repos/updateReleaseAssetRequest? repos/updateReleaseAssetRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/releases/assets/{asset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{asset_id}', "${ assetId }")
            ,
            body: repos/updateReleaseAssetRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release-asset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateReleaseAsset');
    }
    Future<Release-notes-content> repos/generateReleaseNotes(
        String owner,
        String repo,
        Repos/generateReleaseNotesRequest repos/generateReleaseNotesRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/releases/generate-notes'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/generateReleaseNotesRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release-notes-content.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/generateReleaseNotes');
    }
    Future<Release> repos/getLatestRelease(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/latest'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getLatestRelease');
    }
    Future<Release> repos/getReleaseByTag(
        String owner,
        String repo,
        String tag,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/tags/{tag}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{tag}', "${ tag }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getReleaseByTag');
    }
    Future<Release> repos/getRelease(
        String owner,
        String repo,
        int releaseId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/{release_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRelease');
    }
    Future<void> repos/deleteRelease(
        String owner,
        String repo,
        int releaseId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/releases/{release_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteRelease');
    }
    Future<Release> repos/updateRelease(
        String owner,
        String repo,
        int releaseId,
        { Repos/updateReleaseRequest? repos/updateReleaseRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/releases/{release_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
            body: repos/updateReleaseRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateRelease');
    }
    Future<List<Release-asset>> repos/listReleaseAssets(
        String owner,
        String repo,
        int releaseId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/{release_id}/assets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Release-asset>((e) => Release-asset.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listReleaseAssets');
    }
    Future<Release-asset> repos/uploadReleaseAsset(
        String owner,
        String repo,
        int releaseId,
        String name,
        { String? label,Uint8List? uint8List, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/releases/{release_id}/assets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
            queryParameters: {
                'name': name.toString(),
                'label': ?label.toString(),
            },
            body: uint8List,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Release-asset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/uploadReleaseAsset');
    }
    Future<List<Repository-rule-detailed>> repos/getBranchRules(
        String owner,
        String repo,
        String branch,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rules/branches/{branch}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{branch}', "${ branch }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-rule-detailed>((e) => Repository-rule-detailed.fromJson(e as dynamic)).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getBranchRules');
    }
    Future<List<Repository-ruleset>> repos/getRepoRulesets(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1,bool? includesParents = true,String? targets, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'includes_parents': ?includesParents.toString(),
                'targets': ?targets.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-ruleset>((e) => Repository-ruleset.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRulesets');
    }
    Future<Repository-ruleset> repos/createRepoRuleset(
        String owner,
        String repo,
        Repos/createRepoRulesetRequest repos/createRepoRulesetRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/rulesets'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createRepoRulesetRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createRepoRuleset');
    }
    Future<List<Rule-suitesInner>> repos/getRepoRuleSuites(
        String owner,
        String repo,
        { String? ref,Time-period? timePeriod = Time-period.day,String? actorName,Rule-suite-result? ruleSuiteResult = Rule-suite-result.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets/rule-suites'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'ref': ?ref.toString(),
                'time_period': ?timePeriod?.toJson().toString(),
                'actor_name': ?actorName.toString(),
                'rule_suite_result': ?ruleSuiteResult?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Rule-suitesInner>((e) => Rule-suitesInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRuleSuites');
    }
    Future<Rule-suite> repos/getRepoRuleSuite(
        String owner,
        String repo,
        int ruleSuiteId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets/rule-suites/{rule_suite_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{rule_suite_id}', "${ ruleSuiteId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Rule-suite.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRuleSuite');
    }
    Future<Repository-ruleset> repos/getRepoRuleset(
        String owner,
        String repo,
        int rulesetId,
        { bool? includesParents = true, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
            queryParameters: {
                'includes_parents': ?includesParents.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRuleset');
    }
    Future<Repository-ruleset> repos/updateRepoRuleset(
        String owner,
        String repo,
        int rulesetId,
        { Repos/updateRepoRulesetRequest? repos/updateRepoRulesetRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
            body: repos/updateRepoRulesetRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repository-ruleset.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/updateRepoRuleset');
    }
    Future<void> repos/deleteRepoRuleset(
        String owner,
        String repo,
        int rulesetId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteRepoRuleset');
    }
    Future<List<Ruleset-version>> repos/getRepoRulesetHistory(
        String owner,
        String repo,
        int rulesetId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}/history'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Ruleset-version>((e) => Ruleset-version.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRulesetHistory');
    }
    Future<Ruleset-version-with-state> repos/getRepoRulesetVersion(
        String owner,
        String repo,
        int rulesetId,
        int versionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/rulesets/{ruleset_id}/history/{version_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ruleset_id}', "${ rulesetId }")
                        .replaceAll('{version_id}', "${ versionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Ruleset-version-with-state.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getRepoRulesetVersion');
    }
    Future<Repos/getCodeFrequencyStatsResponse> repos/getCodeFrequencyStats(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/stats/code_frequency'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getCodeFrequencyStatsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCodeFrequencyStats');
    }
    Future<Repos/getCommitActivityStatsResponse> repos/getCommitActivityStats(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/stats/commit_activity'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getCommitActivityStatsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getCommitActivityStats');
    }
    Future<Repos/getContributorsStatsResponse> repos/getContributorsStats(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/stats/contributors'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getContributorsStatsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getContributorsStats');
    }
    Future<Participation-stats> repos/getParticipationStats(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/stats/participation'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Participation-stats.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getParticipationStats');
    }
    Future<Repos/getPunchCardStatsResponse> repos/getPunchCardStats(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/stats/punch_card'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Repos/getPunchCardStatsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getPunchCardStats');
    }
    Future<Status> repos/createCommitStatus(
        String owner,
        String repo,
        String sha,
        Repos/createCommitStatusRequest repos/createCommitStatusRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/statuses/{sha}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{sha}', "${ sha }")
            ,
            body: repos/createCommitStatusRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Status.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createCommitStatus');
    }
    Future<List<Tag>> repos/listTags(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/tags'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Tag>((e) => Tag.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listTags');
    }
    Future<List<Tag-protection>> repos/listTagProtection(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/tags/protection'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Tag-protection>((e) => Tag-protection.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listTagProtection');
    }
    Future<Tag-protection> repos/createTagProtection(
        String owner,
        String repo,
        Repos/createTagProtectionRequest repos/createTagProtectionRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/tags/protection'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/createTagProtectionRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Tag-protection.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createTagProtection');
    }
    Future<void> repos/deleteTagProtection(
        String owner,
        String repo,
        int tagProtectionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/tags/protection/{tag_protection_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{tag_protection_id}', "${ tagProtectionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/deleteTagProtection');
    }
    Future<void> repos/downloadTarballArchive(
        String owner,
        String repo,
        String ref,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/tarball/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/downloadTarballArchive');
    }
    Future<List<Team>> repos/listTeams(
        String owner,
        String repo,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/teams'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listTeams');
    }
    Future<Topic> repos/getAllTopics(
        String owner,
        String repo,
        { int? page = 1,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/topics'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'page': ?page.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Topic.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getAllTopics');
    }
    Future<Topic> repos/replaceAllTopics(
        String owner,
        String repo,
        Repos/replaceAllTopicsRequest repos/replaceAllTopicsRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/topics'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/replaceAllTopicsRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Topic.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/replaceAllTopics');
    }
    Future<Clone-traffic> repos/getClones(
        String owner,
        String repo,
        { Per? per = Per.day, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/traffic/clones'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per': ?per?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Clone-traffic.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getClones');
    }
    Future<List<Content-traffic>> repos/getTopPaths(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/traffic/popular/paths'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Content-traffic>((e) => Content-traffic.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getTopPaths');
    }
    Future<List<Referrer-traffic>> repos/getTopReferrers(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/traffic/popular/referrers'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Referrer-traffic>((e) => Referrer-traffic.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getTopReferrers');
    }
    Future<View-traffic> repos/getViews(
        String owner,
        String repo,
        { Per? per = Per.day, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/traffic/views'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'per': ?per?.toJson().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return View-traffic.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/getViews');
    }
    Future<Minimal-repository> repos/transfer(
        String owner,
        String repo,
        Repos/transferRequest repos/transferRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/transfer'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: repos/transferRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Minimal-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/transfer');
    }
    Future<void> repos/checkVulnerabilityAlerts(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/vulnerability-alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/checkVulnerabilityAlerts');
    }
    Future<void> repos/enableVulnerabilityAlerts(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/vulnerability-alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/enableVulnerabilityAlerts');
    }
    Future<void> repos/disableVulnerabilityAlerts(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/vulnerability-alerts'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/disableVulnerabilityAlerts');
    }
    Future<void> repos/downloadZipballArchive(
        String owner,
        String repo,
        String ref,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/zipball/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/downloadZipballArchive');
    }
    Future<Full-repository> repos/createUsingTemplate(
        String templateOwner,
        String templateRepo,
        Repos/createUsingTemplateRequest repos/createUsingTemplateRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{template_owner}/{template_repo}/generate'
            .replaceAll('{template_owner}', "${ templateOwner }")
                        .replaceAll('{template_repo}', "${ templateRepo }")
            ,
            body: repos/createUsingTemplateRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createUsingTemplate');
    }
    Future<List<Minimal-repository>> repos/listPublic(
        { int? since, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repositories'
,
            queryParameters: {
                'since': ?since.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listPublic');
    }
    Future<List<Repository>> repos/listForAuthenticatedUser(
        { Repos/listForAuthenticatedUserParameter0? visibility = Repos/listForAuthenticatedUserParameter0.all,String? affiliation = owner,collaborator,organization_member,Repos/listForAuthenticatedUserParameter2? type = Repos/listForAuthenticatedUserParameter2.all,Repos/listForAuthenticatedUserParameter3? sort = Repos/listForAuthenticatedUserParameter3.fullName,Repos/listForAuthenticatedUserParameter4? direction,int? perPage = 30,int? page = 1,DateTime? since,DateTime? before, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/repos'
,
            queryParameters: {
                'visibility': ?visibility?.toJson().toString(),
                'affiliation': ?affiliation.toString(),
                'type': ?type?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'since': ?since?.toIso8601String().toString(),
                'before': ?before?.toIso8601String().toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listForAuthenticatedUser');
    }
    Future<Full-repository> repos/createForAuthenticatedUser(
        Repos/createForAuthenticatedUserRequest repos/createForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/repos'
,
            body: repos/createForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Full-repository.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/createForAuthenticatedUser');
    }
    Future<List<Repository-invitation>> repos/listInvitationsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/repository_invitations'
,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Repository-invitation>((e) => Repository-invitation.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listInvitationsForAuthenticatedUser');
    }
    Future<void> repos/declineInvitationForAuthenticatedUser(
        int invitationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/repository_invitations/{invitation_id}'
            .replaceAll('{invitation_id}', "${ invitationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/declineInvitationForAuthenticatedUser');
    }
    Future<void> repos/acceptInvitationForAuthenticatedUser(
        int invitationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/user/repository_invitations/{invitation_id}'
            .replaceAll('{invitation_id}', "${ invitationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/acceptInvitationForAuthenticatedUser');
    }
    Future<List<Minimal-repository>> repos/listForUser(
        String username,
        { Repos/listForUserParameter1? type = Repos/listForUserParameter1.owner,Repos/listForUserParameter2? sort = Repos/listForUserParameter2.fullName,Repos/listForUserParameter3? direction,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/repos'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'type': ?type?.toJson().toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Minimal-repository>((e) => Minimal-repository.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $repos/listForUser');
    }
}
