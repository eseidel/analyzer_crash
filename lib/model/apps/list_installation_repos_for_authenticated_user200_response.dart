import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/apps/list_installation_repos_for_authenticated_user200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/apps/list_installation_repos_for_authenticated_user200_response.dart';
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
class Apps&#x2F;listInstallationReposForAuthenticatedUser200Response {
    Apps&#x2F;listInstallationReposForAuthenticatedUser200Response(
        { required this.total_count, this.repository_selection, this.repositories = const [],
         }
    );

    factory Apps&#x2F;listInstallationReposForAuthenticatedUser200Response.fromJson(Map<String, dynamic>
        json) {
        return Apps&#x2F;listInstallationReposForAuthenticatedUser200Response(
            total_count: (json['total_count'] as int).toInt() ,
            repository_selection: json['repository_selection'] as String? ,
            repositories: (json['repositories'] as List).map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Apps&#x2F;listInstallationReposForAuthenticatedUser200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Apps&#x2F;listInstallationReposForAuthenticatedUser200Response.fromJson(json);
    }

    final int  total_count;
    final  String? repository_selection;
    final List<Repository>  repositories;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'repository_selection': repository_selection,
            'repositories': repositories.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          repository_selection,
          repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Apps&#x2F;listInstallationReposForAuthenticatedUser200Response
            && total_count == other.total_count
            && repository_selection == other.repository_selection
            && listsEqual(repositories, other.repositories)
        ;
    }
}
