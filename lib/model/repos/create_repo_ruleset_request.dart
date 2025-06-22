import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Repos&#x2F;createRepoRulesetRequest {
    Repos&#x2F;createRepoRulesetRequest(
        { required this.name, this.target = Repos/createRepoRulesetRequestTarget.branch,required this.enforcement, this.bypass_actors = const [], this.conditions, this.rules = const [],
         }
    );

    factory Repos&#x2F;createRepoRulesetRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createRepoRulesetRequest(
            name: json['name'] as String ,
            target: Repos/createRepoRulesetRequestTarget.maybeFromJson(json['target'] as String?) ,
            enforcement: Repository-rule-enforcement.fromJson(json['enforcement'] as String) ,
            bypass_actors: (json['bypass_actors'] as List?)?.map<Repository-ruleset-bypass-actor>((e) => Repository-ruleset-bypass-actor.fromJson(e as Map<String, dynamic>) ).toList() ,
            conditions: Repository-ruleset-conditions.maybeFromJson(json['conditions'] as Map<String, dynamic>?) ,
            rules: (json['rules'] as List?)?.map<Repository-rule>((e) => Repository-rule.fromJson(e as dynamic)).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createRepoRulesetRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createRepoRulesetRequest.fromJson(json);
    }

    final String  name;
    final  Repos/createRepoRulesetRequestTarget? target;
    final Repository-rule-enforcement  enforcement;
    final  List<Repository-ruleset-bypass-actor>? bypass_actors;
    final  Repository-ruleset-conditions? conditions;
    final  List<Repository-rule>? rules;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'target': target?.toJson(),
            'enforcement': enforcement.toJson(),
            'bypass_actors': bypass_actors?.map((e) => e.toJson()).toList(),
            'conditions': conditions?.toJson(),
            'rules': rules?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          target,
          enforcement,
          bypass_actors,
          conditions,
          rules,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createRepoRulesetRequest
            && name == other.name
            && target == other.target
            && enforcement == other.enforcement
            && listsEqual(bypass_actors, other.bypass_actors)
            && conditions == other.conditions
            && listsEqual(rules, other.rules)
        ;
    }
}
