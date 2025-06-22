import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/apps/list_repos_accessible_to_installation200_response.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/apps/list_repos_accessible_to_installation200_response.dart';
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
class Apps&#x2F;listReposAccessibleToInstallation200Response {
    Apps&#x2F;listReposAccessibleToInstallation200Response(
        { required this.total_count, this.repositories = const [], this.repository_selection,
         }
    );

    factory Apps&#x2F;listReposAccessibleToInstallation200Response.fromJson(Map<String, dynamic>
        json) {
        return Apps&#x2F;listReposAccessibleToInstallation200Response(
            total_count: (json['total_count'] as int).toInt() ,
            repositories: (json['repositories'] as List).map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
            repository_selection: json['repository_selection'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Apps&#x2F;listReposAccessibleToInstallation200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Apps&#x2F;listReposAccessibleToInstallation200Response.fromJson(json);
    }

    final int  total_count;
    final List<Repository>  repositories;
    final  String? repository_selection;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'repositories': repositories.map((e) => e.toJson()).toList(),
            'repository_selection': repository_selection,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          repositories,
          repository_selection,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Apps&#x2F;listReposAccessibleToInstallation200Response
            && total_count == other.total_count
            && listsEqual(repositories, other.repositories)
            && repository_selection == other.repository_selection
        ;
    }
}
