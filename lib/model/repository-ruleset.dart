import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Repository-ruleset {
    Repository-ruleset(
        { required this.id,required this.name, this.target, this.source_type,required this.source,required this.enforcement, this.bypass_actors = const [], this.current_user_can_bypass, this.node_id, this._links, this.conditions, this.rules = const [], this.created_at, this.updated_at,
         }
    );

    factory Repository-ruleset.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            target: Repository-rulesetTarget.maybeFromJson(json['target'] as String?) ,
            source_type: Repository-rulesetSourceType.maybeFromJson(json['source_type'] as String?) ,
            source: json['source'] as String ,
            enforcement: Repository-rule-enforcement.fromJson(json['enforcement'] as String) ,
            bypass_actors: (json['bypass_actors'] as List?)?.map<Repository-ruleset-bypass-actor>((e) => Repository-ruleset-bypass-actor.fromJson(e as Map<String, dynamic>) ).toList() ,
            current_user_can_bypass: Repository-rulesetCurrentUserCanBypass.maybeFromJson(json['current_user_can_bypass'] as String?) ,
            node_id: json['node_id'] as String? ,
            _links: Repository-rulesetLinks.maybeFromJson(json['_links'] as Map<String, dynamic>?) ,
            conditions: Repository-rulesetConditions.maybeFromJson(json['conditions'] as dynamic),
            rules: (json['rules'] as List?)?.map<Repository-rule>((e) => Repository-rule.fromJson(e as dynamic)).toList() ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset.fromJson(json);
    }

    final int  id;
    final String  name;
    final  Repository-rulesetTarget? target;
    final  Repository-rulesetSourceType? source_type;
    final String  source;
    final Repository-rule-enforcement  enforcement;
    final  List<Repository-ruleset-bypass-actor>? bypass_actors;
    final  Repository-rulesetCurrentUserCanBypass? current_user_can_bypass;
    final  String? node_id;
    final  Repository-rulesetLinks? _links;
    final  Repository-rulesetConditions? conditions;
    final  List<Repository-rule>? rules;
    final  DateTime? created_at;
    final  DateTime? updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'target': target?.toJson(),
            'source_type': source_type?.toJson(),
            'source': source,
            'enforcement': enforcement.toJson(),
            'bypass_actors': bypass_actors?.map((e) => e.toJson()).toList(),
            'current_user_can_bypass': current_user_can_bypass?.toJson(),
            'node_id': node_id,
            '_links': _links?.toJson(),
            'conditions': conditions?.toJson(),
            'rules': rules?.map((e) => e.toJson()).toList(),
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          target,
          source_type,
          source,
          enforcement,
          bypass_actors,
          current_user_can_bypass,
          node_id,
          _links,
          conditions,
          rules,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset
            && id == other.id
            && name == other.name
            && target == other.target
            && source_type == other.source_type
            && source == other.source
            && enforcement == other.enforcement
            && listsEqual(bypass_actors, other.bypass_actors)
            && current_user_can_bypass == other.current_user_can_bypass
            && node_id == other.node_id
            && _links == other._links
            && conditions == other.conditions
            && listsEqual(rules, other.rules)
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
