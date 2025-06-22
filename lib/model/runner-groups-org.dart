import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/runner-groups-org.dart';
import 'package:github/model/runner-groups-org.dart';
@immutable
class Runner-groups-org {
    Runner-groups-org(
        { required this.id,required this.name,required this.visibility,required this.default, this.selected_repositories_url,required this.runners_url, this.hosted_runners_url, this.network_configuration_id,required this.inherited, this.inherited_allows_public_repositories,required this.allows_public_repositories, this.workflow_restrictions_read_only = false, this.restricted_to_workflows = false, this.selected_workflows = const [],
         }
    );

    factory Runner-groups-org.fromJson(Map<String, dynamic>
        json) {
        return Runner-groups-org(
            id: (json['id'] as num).toDouble() ,
            name: json['name'] as String ,
            visibility: json['visibility'] as String ,
            default: (json['default'] as bool) ,
            selected_repositories_url: json['selected_repositories_url'] as String? ,
            runners_url: json['runners_url'] as String ,
            hosted_runners_url: json['hosted_runners_url'] as String? ,
            network_configuration_id: json['network_configuration_id'] as String? ,
            inherited: (json['inherited'] as bool) ,
            inherited_allows_public_repositories: (json['inherited_allows_public_repositories'] as bool?) ,
            allows_public_repositories: (json['allows_public_repositories'] as bool) ,
            workflow_restrictions_read_only: (json['workflow_restrictions_read_only'] as bool?) ,
            restricted_to_workflows: (json['restricted_to_workflows'] as bool?) ,
            selected_workflows: (json['selected_workflows'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Runner-groups-org? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Runner-groups-org.fromJson(json);
    }

    final double  id;
    final String  name;
    final String  visibility;
    final bool  default;
    final  String? selected_repositories_url;
    final String  runners_url;
    final  String? hosted_runners_url;
    final  String? network_configuration_id;
    final bool  inherited;
    final  bool? inherited_allows_public_repositories;
    final bool  allows_public_repositories;
    final  bool? workflow_restrictions_read_only;
    final  bool? restricted_to_workflows;
    final  List<String>? selected_workflows;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'visibility': visibility,
            'default': default,
            'selected_repositories_url': selected_repositories_url,
            'runners_url': runners_url,
            'hosted_runners_url': hosted_runners_url,
            'network_configuration_id': network_configuration_id,
            'inherited': inherited,
            'inherited_allows_public_repositories': inherited_allows_public_repositories,
            'allows_public_repositories': allows_public_repositories,
            'workflow_restrictions_read_only': workflow_restrictions_read_only,
            'restricted_to_workflows': restricted_to_workflows,
            'selected_workflows': selected_workflows,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          visibility,
          default,
          selected_repositories_url,
          runners_url,
          hosted_runners_url,
          network_configuration_id,
          inherited,
          inherited_allows_public_repositories,
          allows_public_repositories,
          workflow_restrictions_read_only,
          restricted_to_workflows,
          selected_workflows,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Runner-groups-org
            && id == other.id
            && name == other.name
            && visibility == other.visibility
            && default == other.default
            && selected_repositories_url == other.selected_repositories_url
            && runners_url == other.runners_url
            && hosted_runners_url == other.hosted_runners_url
            && network_configuration_id == other.network_configuration_id
            && inherited == other.inherited
            && inherited_allows_public_repositories == other.inherited_allows_public_repositories
            && allows_public_repositories == other.allows_public_repositories
            && workflow_restrictions_read_only == other.workflow_restrictions_read_only
            && restricted_to_workflows == other.restricted_to_workflows
            && listsEqual(selected_workflows, other.selected_workflows)
        ;
    }
}
