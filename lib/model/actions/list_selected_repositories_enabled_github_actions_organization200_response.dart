import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_selected_repositories_enabled_github_actions_organization200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/actions/list_selected_repositories_enabled_github_actions_organization200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
@immutable
class Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response {
    Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response(
        { required this.total_count, this.repositories = const [],
         }
    );

    factory Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response(
            total_count: (json['total_count'] as num).toDouble() ,
            repositories: (json['repositories'] as List).map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response.fromJson(json);
    }

    final double  total_count;
    final List<Repository>  repositories;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'repositories': repositories.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listSelectedRepositoriesEnabledGithubActionsOrganization200Response
            && total_count == other.total_count
            && listsEqual(repositories, other.repositories)
        ;
    }
}
