import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migration.dart';
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
import 'package:github/model/migration.dart';
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
@immutable
class Migration {
    Migration(
        { required this.id,required this.owner,required this.guid,required this.state,required this.lock_repositories,required this.exclude_metadata,required this.exclude_git_data,required this.exclude_attachments,required this.exclude_releases,required this.exclude_owner_projects,required this.org_metadata_only, this.repositories = const [],required this.url,required this.created_at,required this.updated_at,required this.node_id, this.archive_url, this.exclude = const [],
         }
    );

    factory Migration.fromJson(Map<String, dynamic>
        json) {
        return Migration(
            id: (json['id'] as int).toInt() ,
            owner: Nullable-simple-user.fromJson(json['owner'] as Map<String, dynamic>) ,
            guid: json['guid'] as String ,
            state: json['state'] as String ,
            lock_repositories: (json['lock_repositories'] as bool) ,
            exclude_metadata: (json['exclude_metadata'] as bool) ,
            exclude_git_data: (json['exclude_git_data'] as bool) ,
            exclude_attachments: (json['exclude_attachments'] as bool) ,
            exclude_releases: (json['exclude_releases'] as bool) ,
            exclude_owner_projects: (json['exclude_owner_projects'] as bool) ,
            org_metadata_only: (json['org_metadata_only'] as bool) ,
            repositories: (json['repositories'] as List).map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
            url: json['url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            node_id: json['node_id'] as String ,
            archive_url: json['archive_url'] as String? ,
            exclude: (json['exclude'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migration? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migration.fromJson(json);
    }

    final int  id;
    final Nullable-simple-user  owner;
    final String  guid;
    final String  state;
    final bool  lock_repositories;
    final bool  exclude_metadata;
    final bool  exclude_git_data;
    final bool  exclude_attachments;
    final bool  exclude_releases;
    final bool  exclude_owner_projects;
    final bool  org_metadata_only;
    final List<Repository>  repositories;
    final String  url;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  node_id;
    final  String? archive_url;
    final  List<String>? exclude;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'owner': owner.toJson(),
            'guid': guid,
            'state': state,
            'lock_repositories': lock_repositories,
            'exclude_metadata': exclude_metadata,
            'exclude_git_data': exclude_git_data,
            'exclude_attachments': exclude_attachments,
            'exclude_releases': exclude_releases,
            'exclude_owner_projects': exclude_owner_projects,
            'org_metadata_only': org_metadata_only,
            'repositories': repositories.map((e) => e.toJson()).toList(),
            'url': url,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'node_id': node_id,
            'archive_url': archive_url,
            'exclude': exclude,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          owner,
          guid,
          state,
          lock_repositories,
          exclude_metadata,
          exclude_git_data,
          exclude_attachments,
          exclude_releases,
          exclude_owner_projects,
          org_metadata_only,
          repositories,
          url,
          created_at,
          updated_at,
          node_id,
          archive_url,
          exclude,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migration
            && id == other.id
            && owner == other.owner
            && guid == other.guid
            && state == other.state
            && lock_repositories == other.lock_repositories
            && exclude_metadata == other.exclude_metadata
            && exclude_git_data == other.exclude_git_data
            && exclude_attachments == other.exclude_attachments
            && exclude_releases == other.exclude_releases
            && exclude_owner_projects == other.exclude_owner_projects
            && org_metadata_only == other.org_metadata_only
            && listsEqual(repositories, other.repositories)
            && url == other.url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && node_id == other.node_id
            && archive_url == other.archive_url
            && listsEqual(exclude, other.exclude)
        ;
    }
}
