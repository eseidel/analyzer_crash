import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request_exclude_inner.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request_exclude_inner.dart';
@immutable
class Migrations&#x2F;startForAuthenticatedUserRequest {
    Migrations&#x2F;startForAuthenticatedUserRequest(
        {  this.lock_repositories, this.exclude_metadata, this.exclude_git_data, this.exclude_attachments, this.exclude_releases, this.exclude_owner_projects, this.org_metadata_only = false, this.exclude = const [], this.repositories = const [],
         }
    );

    factory Migrations&#x2F;startForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Migrations&#x2F;startForAuthenticatedUserRequest(
            lock_repositories: (json['lock_repositories'] as bool?) ,
            exclude_metadata: (json['exclude_metadata'] as bool?) ,
            exclude_git_data: (json['exclude_git_data'] as bool?) ,
            exclude_attachments: (json['exclude_attachments'] as bool?) ,
            exclude_releases: (json['exclude_releases'] as bool?) ,
            exclude_owner_projects: (json['exclude_owner_projects'] as bool?) ,
            org_metadata_only: (json['org_metadata_only'] as bool?) ,
            exclude: (json['exclude'] as List?)?.map<Migrations/startForAuthenticatedUserRequestExcludeInner>((e) => Migrations/startForAuthenticatedUserRequestExcludeInner.fromJson(e as String) ).toList() ,
            repositories: (json['repositories'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;startForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;startForAuthenticatedUserRequest.fromJson(json);
    }

    final  bool? lock_repositories;
    final  bool? exclude_metadata;
    final  bool? exclude_git_data;
    final  bool? exclude_attachments;
    final  bool? exclude_releases;
    final  bool? exclude_owner_projects;
    final  bool? org_metadata_only;
    final  List<Migrations/startForAuthenticatedUserRequestExcludeInner>? exclude;
    final List<String>  repositories;


    Map<String, dynamic> toJson() {
        return {
            'lock_repositories': lock_repositories,
            'exclude_metadata': exclude_metadata,
            'exclude_git_data': exclude_git_data,
            'exclude_attachments': exclude_attachments,
            'exclude_releases': exclude_releases,
            'exclude_owner_projects': exclude_owner_projects,
            'org_metadata_only': org_metadata_only,
            'exclude': exclude?.map((e) => e.toJson()).toList(),
            'repositories': repositories,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          lock_repositories,
          exclude_metadata,
          exclude_git_data,
          exclude_attachments,
          exclude_releases,
          exclude_owner_projects,
          org_metadata_only,
          exclude,
          repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migrations&#x2F;startForAuthenticatedUserRequest
            && lock_repositories == other.lock_repositories
            && exclude_metadata == other.exclude_metadata
            && exclude_git_data == other.exclude_git_data
            && exclude_attachments == other.exclude_attachments
            && exclude_releases == other.exclude_releases
            && exclude_owner_projects == other.exclude_owner_projects
            && org_metadata_only == other.org_metadata_only
            && listsEqual(exclude, other.exclude)
            && listsEqual(repositories, other.repositories)
        ;
    }
}
