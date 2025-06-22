import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request_visibility.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request.dart';
import 'package:github/model/actions/create_self_hosted_runner_group_for_org_request_visibility.dart';
@immutable
class Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest {
    Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest(
        { required this.name, this.visibility = Actions/createSelfHostedRunnerGroupForOrgRequestVisibility.all, this.selected_repository_ids = const [], this.runners = const [], this.allows_public_repositories = false, this.restricted_to_workflows = false, this.selected_workflows = const [], this.network_configuration_id,
         }
    );

    factory Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest(
            name: json['name'] as String ,
            visibility: Actions/createSelfHostedRunnerGroupForOrgRequestVisibility.maybeFromJson(json['visibility'] as String?) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
            runners: (json['runners'] as List?)?.cast<int>() ,
            allows_public_repositories: (json['allows_public_repositories'] as bool?) ,
            restricted_to_workflows: (json['restricted_to_workflows'] as bool?) ,
            selected_workflows: (json['selected_workflows'] as List?)?.cast<String>() ,
            network_configuration_id: json['network_configuration_id'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest.fromJson(json);
    }

    final String  name;
    final  Actions/createSelfHostedRunnerGroupForOrgRequestVisibility? visibility;
    final  List<int>? selected_repository_ids;
    final  List<int>? runners;
    final  bool? allows_public_repositories;
    final  bool? restricted_to_workflows;
    final  List<String>? selected_workflows;
    final  String? network_configuration_id;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'visibility': visibility?.toJson(),
            'selected_repository_ids': selected_repository_ids,
            'runners': runners,
            'allows_public_repositories': allows_public_repositories,
            'restricted_to_workflows': restricted_to_workflows,
            'selected_workflows': selected_workflows,
            'network_configuration_id': network_configuration_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          visibility,
          selected_repository_ids,
          runners,
          allows_public_repositories,
          restricted_to_workflows,
          selected_workflows,
          network_configuration_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createSelfHostedRunnerGroupForOrgRequest
            && name == other.name
            && visibility == other.visibility
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
            && listsEqual(runners, other.runners)
            && allows_public_repositories == other.allows_public_repositories
            && restricted_to_workflows == other.restricted_to_workflows
            && listsEqual(selected_workflows, other.selected_workflows)
            && network_configuration_id == other.network_configuration_id
        ;
    }
}
