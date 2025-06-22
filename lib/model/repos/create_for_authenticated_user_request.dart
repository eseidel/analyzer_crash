import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_for_authenticated_user_request.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_message.dart';
import 'package:github/model/repos/create_for_authenticated_user_request.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_message.dart';
@immutable
class Repos&#x2F;createForAuthenticatedUserRequest {
    Repos&#x2F;createForAuthenticatedUserRequest(
        { required this.name, this.description, this.homepage, this.private = false, this.has_issues = true, this.has_projects = true, this.has_wiki = true, this.has_discussions = false, this.team_id, this.auto_init = false, this.gitignore_template, this.license_template, this.allow_squash_merge = true, this.allow_merge_commit = true, this.allow_rebase_merge = true, this.allow_auto_merge = false, this.delete_branch_on_merge = false, this.squash_merge_commit_title, this.squash_merge_commit_message, this.merge_commit_title, this.merge_commit_message, this.has_downloads = true, this.is_template = false,
         }
    );

    factory Repos&#x2F;createForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createForAuthenticatedUserRequest(
            name: json['name'] as String ,
            description: json['description'] as String? ,
            homepage: json['homepage'] as String? ,
            private: (json['private'] as bool?) ,
            has_issues: (json['has_issues'] as bool?) ,
            has_projects: (json['has_projects'] as bool?) ,
            has_wiki: (json['has_wiki'] as bool?) ,
            has_discussions: (json['has_discussions'] as bool?) ,
            team_id: (json['team_id'] as int?).toInt() ,
            auto_init: (json['auto_init'] as bool?) ,
            gitignore_template: json['gitignore_template'] as String? ,
            license_template: json['license_template'] as String? ,
            allow_squash_merge: (json['allow_squash_merge'] as bool?) ,
            allow_merge_commit: (json['allow_merge_commit'] as bool?) ,
            allow_rebase_merge: (json['allow_rebase_merge'] as bool?) ,
            allow_auto_merge: (json['allow_auto_merge'] as bool?) ,
            delete_branch_on_merge: (json['delete_branch_on_merge'] as bool?) ,
            squash_merge_commit_title: Repos/createForAuthenticatedUserRequestSquashMergeCommitTitle.maybeFromJson(json['squash_merge_commit_title'] as String?) ,
            squash_merge_commit_message: Repos/createForAuthenticatedUserRequestSquashMergeCommitMessage.maybeFromJson(json['squash_merge_commit_message'] as String?) ,
            merge_commit_title: Repos/createForAuthenticatedUserRequestMergeCommitTitle.maybeFromJson(json['merge_commit_title'] as String?) ,
            merge_commit_message: Repos/createForAuthenticatedUserRequestMergeCommitMessage.maybeFromJson(json['merge_commit_message'] as String?) ,
            has_downloads: (json['has_downloads'] as bool?) ,
            is_template: (json['is_template'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createForAuthenticatedUserRequest.fromJson(json);
    }

    final String  name;
    final  String? description;
    final  String? homepage;
    final  bool? private;
    final  bool? has_issues;
    final  bool? has_projects;
    final  bool? has_wiki;
    final  bool? has_discussions;
    final  int? team_id;
    final  bool? auto_init;
    final  String? gitignore_template;
    final  String? license_template;
    final  bool? allow_squash_merge;
    final  bool? allow_merge_commit;
    final  bool? allow_rebase_merge;
    final  bool? allow_auto_merge;
    final  bool? delete_branch_on_merge;
    final  Repos/createForAuthenticatedUserRequestSquashMergeCommitTitle? squash_merge_commit_title;
    final  Repos/createForAuthenticatedUserRequestSquashMergeCommitMessage? squash_merge_commit_message;
    final  Repos/createForAuthenticatedUserRequestMergeCommitTitle? merge_commit_title;
    final  Repos/createForAuthenticatedUserRequestMergeCommitMessage? merge_commit_message;
    final  bool? has_downloads;
    final  bool? is_template;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'homepage': homepage,
            'private': private,
            'has_issues': has_issues,
            'has_projects': has_projects,
            'has_wiki': has_wiki,
            'has_discussions': has_discussions,
            'team_id': team_id,
            'auto_init': auto_init,
            'gitignore_template': gitignore_template,
            'license_template': license_template,
            'allow_squash_merge': allow_squash_merge,
            'allow_merge_commit': allow_merge_commit,
            'allow_rebase_merge': allow_rebase_merge,
            'allow_auto_merge': allow_auto_merge,
            'delete_branch_on_merge': delete_branch_on_merge,
            'squash_merge_commit_title': squash_merge_commit_title?.toJson(),
            'squash_merge_commit_message': squash_merge_commit_message?.toJson(),
            'merge_commit_title': merge_commit_title?.toJson(),
            'merge_commit_message': merge_commit_message?.toJson(),
            'has_downloads': has_downloads,
            'is_template': is_template,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          description,
          homepage,
          private,
          has_issues,
          has_projects,
          has_wiki,
          has_discussions,
          team_id,
          auto_init,
          gitignore_template,
          license_template,
          allow_squash_merge,
          allow_merge_commit,
          allow_rebase_merge,
          allow_auto_merge,
          delete_branch_on_merge,
          squash_merge_commit_title,
          squash_merge_commit_message,
          merge_commit_title,
          merge_commit_message,
          has_downloads,
          is_template,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createForAuthenticatedUserRequest
            && name == other.name
            && description == other.description
            && homepage == other.homepage
            && private == other.private
            && has_issues == other.has_issues
            && has_projects == other.has_projects
            && has_wiki == other.has_wiki
            && has_discussions == other.has_discussions
            && team_id == other.team_id
            && auto_init == other.auto_init
            && gitignore_template == other.gitignore_template
            && license_template == other.license_template
            && allow_squash_merge == other.allow_squash_merge
            && allow_merge_commit == other.allow_merge_commit
            && allow_rebase_merge == other.allow_rebase_merge
            && allow_auto_merge == other.allow_auto_merge
            && delete_branch_on_merge == other.delete_branch_on_merge
            && squash_merge_commit_title == other.squash_merge_commit_title
            && squash_merge_commit_message == other.squash_merge_commit_message
            && merge_commit_title == other.merge_commit_title
            && merge_commit_message == other.merge_commit_message
            && has_downloads == other.has_downloads
            && is_template == other.is_template
        ;
    }
}
