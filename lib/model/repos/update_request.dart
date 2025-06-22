import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request.dart';
import 'package:github/model/repos/update_request_visibility.dart';
import 'package:github/model/repos/update_request_security_and_analysis.dart';
import 'package:github/model/repos/update_request_security_and_analysis_advanced_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/update_request_merge_commit_title.dart';
import 'package:github/model/repos/update_request_merge_commit_message.dart';
import 'package:github/model/repos/update_request.dart';
import 'package:github/model/repos/update_request_visibility.dart';
import 'package:github/model/repos/update_request_security_and_analysis.dart';
import 'package:github/model/repos/update_request_security_and_analysis_advanced_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/update_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/update_request_merge_commit_title.dart';
import 'package:github/model/repos/update_request_merge_commit_message.dart';
@immutable
class Repos&#x2F;updateRequest {
    Repos&#x2F;updateRequest(
        {  this.name, this.description, this.homepage, this.private = false, this.visibility, this.security_and_analysis, this.has_issues = true, this.has_projects = true, this.has_wiki = true, this.is_template = false, this.default_branch, this.allow_squash_merge = true, this.allow_merge_commit = true, this.allow_rebase_merge = true, this.allow_auto_merge = false, this.delete_branch_on_merge = false, this.allow_update_branch = false, this.use_squash_pr_title_as_default = false, this.squash_merge_commit_title, this.squash_merge_commit_message, this.merge_commit_title, this.merge_commit_message, this.archived = false, this.allow_forking = false, this.web_commit_signoff_required = false,
         }
    );

    factory Repos&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateRequest(
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            homepage: json['homepage'] as String? ,
            private: (json['private'] as bool?) ,
            visibility: Repos/updateRequestVisibility.maybeFromJson(json['visibility'] as String?) ,
            security_and_analysis: Repos/updateRequestSecurityAndAnalysis.maybeFromJson(json['security_and_analysis'] as Map<String, dynamic>?) ,
            has_issues: (json['has_issues'] as bool?) ,
            has_projects: (json['has_projects'] as bool?) ,
            has_wiki: (json['has_wiki'] as bool?) ,
            is_template: (json['is_template'] as bool?) ,
            default_branch: json['default_branch'] as String? ,
            allow_squash_merge: (json['allow_squash_merge'] as bool?) ,
            allow_merge_commit: (json['allow_merge_commit'] as bool?) ,
            allow_rebase_merge: (json['allow_rebase_merge'] as bool?) ,
            allow_auto_merge: (json['allow_auto_merge'] as bool?) ,
            delete_branch_on_merge: (json['delete_branch_on_merge'] as bool?) ,
            allow_update_branch: (json['allow_update_branch'] as bool?) ,
            use_squash_pr_title_as_default: (json['use_squash_pr_title_as_default'] as bool?) ,
            squash_merge_commit_title: Repos/updateRequestSquashMergeCommitTitle.maybeFromJson(json['squash_merge_commit_title'] as String?) ,
            squash_merge_commit_message: Repos/updateRequestSquashMergeCommitMessage.maybeFromJson(json['squash_merge_commit_message'] as String?) ,
            merge_commit_title: Repos/updateRequestMergeCommitTitle.maybeFromJson(json['merge_commit_title'] as String?) ,
            merge_commit_message: Repos/updateRequestMergeCommitMessage.maybeFromJson(json['merge_commit_message'] as String?) ,
            archived: (json['archived'] as bool?) ,
            allow_forking: (json['allow_forking'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequest.fromJson(json);
    }

    final  String? name;
    final  String? description;
    final  String? homepage;
    final  bool? private;
    final  Repos/updateRequestVisibility? visibility;
    final  Repos/updateRequestSecurityAndAnalysis? security_and_analysis;
    final  bool? has_issues;
    final  bool? has_projects;
    final  bool? has_wiki;
    final  bool? is_template;
    final  String? default_branch;
    final  bool? allow_squash_merge;
    final  bool? allow_merge_commit;
    final  bool? allow_rebase_merge;
    final  bool? allow_auto_merge;
    final  bool? delete_branch_on_merge;
    final  bool? allow_update_branch;
    final  bool? use_squash_pr_title_as_default;
    final  Repos/updateRequestSquashMergeCommitTitle? squash_merge_commit_title;
    final  Repos/updateRequestSquashMergeCommitMessage? squash_merge_commit_message;
    final  Repos/updateRequestMergeCommitTitle? merge_commit_title;
    final  Repos/updateRequestMergeCommitMessage? merge_commit_message;
    final  bool? archived;
    final  bool? allow_forking;
    final  bool? web_commit_signoff_required;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'homepage': homepage,
            'private': private,
            'visibility': visibility?.toJson(),
            'security_and_analysis': security_and_analysis?.toJson(),
            'has_issues': has_issues,
            'has_projects': has_projects,
            'has_wiki': has_wiki,
            'is_template': is_template,
            'default_branch': default_branch,
            'allow_squash_merge': allow_squash_merge,
            'allow_merge_commit': allow_merge_commit,
            'allow_rebase_merge': allow_rebase_merge,
            'allow_auto_merge': allow_auto_merge,
            'delete_branch_on_merge': delete_branch_on_merge,
            'allow_update_branch': allow_update_branch,
            'use_squash_pr_title_as_default': use_squash_pr_title_as_default,
            'squash_merge_commit_title': squash_merge_commit_title?.toJson(),
            'squash_merge_commit_message': squash_merge_commit_message?.toJson(),
            'merge_commit_title': merge_commit_title?.toJson(),
            'merge_commit_message': merge_commit_message?.toJson(),
            'archived': archived,
            'allow_forking': allow_forking,
            'web_commit_signoff_required': web_commit_signoff_required,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          description,
          homepage,
          private,
          visibility,
          security_and_analysis,
          has_issues,
          has_projects,
          has_wiki,
          is_template,
          default_branch,
          allow_squash_merge,
          allow_merge_commit,
          allow_rebase_merge,
          allow_auto_merge,
          delete_branch_on_merge,
          allow_update_branch,
          use_squash_pr_title_as_default,
          squash_merge_commit_title,
          squash_merge_commit_message,
          merge_commit_title,
          merge_commit_message,
          archived,
          allow_forking,
          web_commit_signoff_required,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateRequest
            && name == other.name
            && description == other.description
            && homepage == other.homepage
            && private == other.private
            && visibility == other.visibility
            && security_and_analysis == other.security_and_analysis
            && has_issues == other.has_issues
            && has_projects == other.has_projects
            && has_wiki == other.has_wiki
            && is_template == other.is_template
            && default_branch == other.default_branch
            && allow_squash_merge == other.allow_squash_merge
            && allow_merge_commit == other.allow_merge_commit
            && allow_rebase_merge == other.allow_rebase_merge
            && allow_auto_merge == other.allow_auto_merge
            && delete_branch_on_merge == other.delete_branch_on_merge
            && allow_update_branch == other.allow_update_branch
            && use_squash_pr_title_as_default == other.use_squash_pr_title_as_default
            && squash_merge_commit_title == other.squash_merge_commit_title
            && squash_merge_commit_message == other.squash_merge_commit_message
            && merge_commit_title == other.merge_commit_title
            && merge_commit_message == other.merge_commit_message
            && archived == other.archived
            && allow_forking == other.allow_forking
            && web_commit_signoff_required == other.web_commit_signoff_required
        ;
    }
}
