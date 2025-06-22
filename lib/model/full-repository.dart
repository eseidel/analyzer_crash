import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
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
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
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
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
@immutable
class Full-repository {
    Full-repository(
        { required this.id,required this.node_id,required this.name,required this.full_name,required this.owner,required this.private,required this.html_url,required this.description,required this.fork,required this.url,required this.archive_url,required this.assignees_url,required this.blobs_url,required this.branches_url,required this.collaborators_url,required this.comments_url,required this.commits_url,required this.compare_url,required this.contents_url,required this.contributors_url,required this.deployments_url,required this.downloads_url,required this.events_url,required this.forks_url,required this.git_commits_url,required this.git_refs_url,required this.git_tags_url,required this.git_url,required this.issue_comment_url,required this.issue_events_url,required this.issues_url,required this.keys_url,required this.labels_url,required this.languages_url,required this.merges_url,required this.milestones_url,required this.notifications_url,required this.pulls_url,required this.releases_url,required this.ssh_url,required this.stargazers_url,required this.statuses_url,required this.subscribers_url,required this.subscription_url,required this.tags_url,required this.teams_url,required this.trees_url,required this.clone_url,required this.mirror_url,required this.hooks_url,required this.svn_url,required this.homepage,required this.language,required this.forks_count,required this.stargazers_count,required this.watchers_count,required this.size,required this.default_branch,required this.open_issues_count, this.is_template, this.topics = const [],required this.has_issues,required this.has_projects,required this.has_wiki,required this.has_pages, this.has_downloads,required this.has_discussions,required this.archived,required this.disabled, this.visibility,required this.pushed_at,required this.created_at,required this.updated_at, this.permissions, this.allow_rebase_merge, this.template_repository, this.temp_clone_token, this.allow_squash_merge, this.allow_auto_merge, this.delete_branch_on_merge, this.allow_merge_commit, this.allow_update_branch, this.use_squash_pr_title_as_default, this.squash_merge_commit_title, this.squash_merge_commit_message, this.merge_commit_title, this.merge_commit_message, this.allow_forking, this.web_commit_signoff_required,required this.subscribers_count,required this.network_count,required this.license, this.organization, this.parent, this.source,required this.forks, this.master_branch,required this.open_issues,required this.watchers, this.anonymous_access_enabled = true, this.code_of_conduct, this.security_and_analysis, this.custom_properties,
         }
    );

    factory Full-repository.fromJson(Map<String, dynamic>
        json) {
        return Full-repository(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            full_name: json['full_name'] as String ,
            owner: Simple-user.fromJson(json['owner'] as Map<String, dynamic>) ,
            private: (json['private'] as bool) ,
            html_url: json['html_url'] as String ,
            description: json['description'] as String ,
            fork: (json['fork'] as bool) ,
            url: json['url'] as String ,
            archive_url: json['archive_url'] as String ,
            assignees_url: json['assignees_url'] as String ,
            blobs_url: json['blobs_url'] as String ,
            branches_url: json['branches_url'] as String ,
            collaborators_url: json['collaborators_url'] as String ,
            comments_url: json['comments_url'] as String ,
            commits_url: json['commits_url'] as String ,
            compare_url: json['compare_url'] as String ,
            contents_url: json['contents_url'] as String ,
            contributors_url: json['contributors_url'] as String ,
            deployments_url: json['deployments_url'] as String ,
            downloads_url: json['downloads_url'] as String ,
            events_url: json['events_url'] as String ,
            forks_url: json['forks_url'] as String ,
            git_commits_url: json['git_commits_url'] as String ,
            git_refs_url: json['git_refs_url'] as String ,
            git_tags_url: json['git_tags_url'] as String ,
            git_url: json['git_url'] as String ,
            issue_comment_url: json['issue_comment_url'] as String ,
            issue_events_url: json['issue_events_url'] as String ,
            issues_url: json['issues_url'] as String ,
            keys_url: json['keys_url'] as String ,
            labels_url: json['labels_url'] as String ,
            languages_url: json['languages_url'] as String ,
            merges_url: json['merges_url'] as String ,
            milestones_url: json['milestones_url'] as String ,
            notifications_url: json['notifications_url'] as String ,
            pulls_url: json['pulls_url'] as String ,
            releases_url: json['releases_url'] as String ,
            ssh_url: json['ssh_url'] as String ,
            stargazers_url: json['stargazers_url'] as String ,
            statuses_url: json['statuses_url'] as String ,
            subscribers_url: json['subscribers_url'] as String ,
            subscription_url: json['subscription_url'] as String ,
            tags_url: json['tags_url'] as String ,
            teams_url: json['teams_url'] as String ,
            trees_url: json['trees_url'] as String ,
            clone_url: json['clone_url'] as String ,
            mirror_url: json['mirror_url'] as String ,
            hooks_url: json['hooks_url'] as String ,
            svn_url: json['svn_url'] as String ,
            homepage: json['homepage'] as String ,
            language: json['language'] as String ,
            forks_count: (json['forks_count'] as int).toInt() ,
            stargazers_count: (json['stargazers_count'] as int).toInt() ,
            watchers_count: (json['watchers_count'] as int).toInt() ,
            size: (json['size'] as int).toInt() ,
            default_branch: json['default_branch'] as String ,
            open_issues_count: (json['open_issues_count'] as int).toInt() ,
            is_template: (json['is_template'] as bool?) ,
            topics: (json['topics'] as List?)?.cast<String>() ,
            has_issues: (json['has_issues'] as bool) ,
            has_projects: (json['has_projects'] as bool) ,
            has_wiki: (json['has_wiki'] as bool) ,
            has_pages: (json['has_pages'] as bool) ,
            has_downloads: (json['has_downloads'] as bool?) ,
            has_discussions: (json['has_discussions'] as bool) ,
            archived: (json['archived'] as bool) ,
            disabled: (json['disabled'] as bool) ,
            visibility: json['visibility'] as String? ,
            pushed_at: DateTime.parse(json['pushed_at'] as String),
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            permissions: Full-repositoryPermissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
            allow_rebase_merge: (json['allow_rebase_merge'] as bool?) ,
            template_repository: Nullable-repository.maybeFromJson(json['template_repository'] as Map<String, dynamic>?) ,
            temp_clone_token: json['temp_clone_token'] as String? ,
            allow_squash_merge: (json['allow_squash_merge'] as bool?) ,
            allow_auto_merge: (json['allow_auto_merge'] as bool?) ,
            delete_branch_on_merge: (json['delete_branch_on_merge'] as bool?) ,
            allow_merge_commit: (json['allow_merge_commit'] as bool?) ,
            allow_update_branch: (json['allow_update_branch'] as bool?) ,
            use_squash_pr_title_as_default: (json['use_squash_pr_title_as_default'] as bool?) ,
            squash_merge_commit_title: Full-repositorySquashMergeCommitTitle.maybeFromJson(json['squash_merge_commit_title'] as String?) ,
            squash_merge_commit_message: Full-repositorySquashMergeCommitMessage.maybeFromJson(json['squash_merge_commit_message'] as String?) ,
            merge_commit_title: Full-repositoryMergeCommitTitle.maybeFromJson(json['merge_commit_title'] as String?) ,
            merge_commit_message: Full-repositoryMergeCommitMessage.maybeFromJson(json['merge_commit_message'] as String?) ,
            allow_forking: (json['allow_forking'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
            subscribers_count: (json['subscribers_count'] as int).toInt() ,
            network_count: (json['network_count'] as int).toInt() ,
            license: Nullable-license-simple.fromJson(json['license'] as Map<String, dynamic>) ,
            organization: Nullable-simple-user.maybeFromJson(json['organization'] as Map<String, dynamic>?) ,
            parent: Repository.maybeFromJson(json['parent'] as Map<String, dynamic>?) ,
            source: Repository.maybeFromJson(json['source'] as Map<String, dynamic>?) ,
            forks: (json['forks'] as int).toInt() ,
            master_branch: json['master_branch'] as String? ,
            open_issues: (json['open_issues'] as int).toInt() ,
            watchers: (json['watchers'] as int).toInt() ,
            anonymous_access_enabled: (json['anonymous_access_enabled'] as bool?) ,
            code_of_conduct: Code-of-conduct-simple.maybeFromJson(json['code_of_conduct'] as Map<String, dynamic>?) ,
            security_and_analysis: Security-and-analysis.maybeFromJson(json['security_and_analysis'] as Map<String, dynamic>?) ,
            custom_properties: json['custom_properties'].map((key, value) => MapEntry(key, value)).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Full-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Full-repository.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  name;
    final String  full_name;
    final Simple-user  owner;
    final bool  private;
    final String  html_url;
    final String  description;
    final bool  fork;
    final String  url;
    final String  archive_url;
    final String  assignees_url;
    final String  blobs_url;
    final String  branches_url;
    final String  collaborators_url;
    final String  comments_url;
    final String  commits_url;
    final String  compare_url;
    final String  contents_url;
    final String  contributors_url;
    final String  deployments_url;
    final String  downloads_url;
    final String  events_url;
    final String  forks_url;
    final String  git_commits_url;
    final String  git_refs_url;
    final String  git_tags_url;
    final String  git_url;
    final String  issue_comment_url;
    final String  issue_events_url;
    final String  issues_url;
    final String  keys_url;
    final String  labels_url;
    final String  languages_url;
    final String  merges_url;
    final String  milestones_url;
    final String  notifications_url;
    final String  pulls_url;
    final String  releases_url;
    final String  ssh_url;
    final String  stargazers_url;
    final String  statuses_url;
    final String  subscribers_url;
    final String  subscription_url;
    final String  tags_url;
    final String  teams_url;
    final String  trees_url;
    final String  clone_url;
    final String  mirror_url;
    final String  hooks_url;
    final String  svn_url;
    final String  homepage;
    final String  language;
    final int  forks_count;
    final int  stargazers_count;
    final int  watchers_count;
    final int  size;
    final String  default_branch;
    final int  open_issues_count;
    final  bool? is_template;
    final  List<String>? topics;
    final bool  has_issues;
    final bool  has_projects;
    final bool  has_wiki;
    final bool  has_pages;
    final  bool? has_downloads;
    final bool  has_discussions;
    final bool  archived;
    final bool  disabled;
    final  String? visibility;
    final DateTime  pushed_at;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  Full-repositoryPermissions? permissions;
    final  bool? allow_rebase_merge;
    final  Nullable-repository? template_repository;
    final  String? temp_clone_token;
    final  bool? allow_squash_merge;
    final  bool? allow_auto_merge;
    final  bool? delete_branch_on_merge;
    final  bool? allow_merge_commit;
    final  bool? allow_update_branch;
    final  bool? use_squash_pr_title_as_default;
    final  Full-repositorySquashMergeCommitTitle? squash_merge_commit_title;
    final  Full-repositorySquashMergeCommitMessage? squash_merge_commit_message;
    final  Full-repositoryMergeCommitTitle? merge_commit_title;
    final  Full-repositoryMergeCommitMessage? merge_commit_message;
    final  bool? allow_forking;
    final  bool? web_commit_signoff_required;
    final int  subscribers_count;
    final int  network_count;
    final Nullable-license-simple  license;
    final  Nullable-simple-user? organization;
    final  Repository? parent;
    final  Repository? source;
    final int  forks;
    final  String? master_branch;
    final int  open_issues;
    final int  watchers;
    final  bool? anonymous_access_enabled;
    final  Code-of-conduct-simple? code_of_conduct;
    final  Security-and-analysis? security_and_analysis;
    final  Map<String, dynamic>? custom_properties;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'full_name': full_name,
            'owner': owner.toJson(),
            'private': private,
            'html_url': html_url,
            'description': description,
            'fork': fork,
            'url': url,
            'archive_url': archive_url,
            'assignees_url': assignees_url,
            'blobs_url': blobs_url,
            'branches_url': branches_url,
            'collaborators_url': collaborators_url,
            'comments_url': comments_url,
            'commits_url': commits_url,
            'compare_url': compare_url,
            'contents_url': contents_url,
            'contributors_url': contributors_url,
            'deployments_url': deployments_url,
            'downloads_url': downloads_url,
            'events_url': events_url,
            'forks_url': forks_url,
            'git_commits_url': git_commits_url,
            'git_refs_url': git_refs_url,
            'git_tags_url': git_tags_url,
            'git_url': git_url,
            'issue_comment_url': issue_comment_url,
            'issue_events_url': issue_events_url,
            'issues_url': issues_url,
            'keys_url': keys_url,
            'labels_url': labels_url,
            'languages_url': languages_url,
            'merges_url': merges_url,
            'milestones_url': milestones_url,
            'notifications_url': notifications_url,
            'pulls_url': pulls_url,
            'releases_url': releases_url,
            'ssh_url': ssh_url,
            'stargazers_url': stargazers_url,
            'statuses_url': statuses_url,
            'subscribers_url': subscribers_url,
            'subscription_url': subscription_url,
            'tags_url': tags_url,
            'teams_url': teams_url,
            'trees_url': trees_url,
            'clone_url': clone_url,
            'mirror_url': mirror_url,
            'hooks_url': hooks_url,
            'svn_url': svn_url,
            'homepage': homepage,
            'language': language,
            'forks_count': forks_count,
            'stargazers_count': stargazers_count,
            'watchers_count': watchers_count,
            'size': size,
            'default_branch': default_branch,
            'open_issues_count': open_issues_count,
            'is_template': is_template,
            'topics': topics,
            'has_issues': has_issues,
            'has_projects': has_projects,
            'has_wiki': has_wiki,
            'has_pages': has_pages,
            'has_downloads': has_downloads,
            'has_discussions': has_discussions,
            'archived': archived,
            'disabled': disabled,
            'visibility': visibility,
            'pushed_at': pushed_at.toIso8601String(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'permissions': permissions?.toJson(),
            'allow_rebase_merge': allow_rebase_merge,
            'template_repository': template_repository?.toJson(),
            'temp_clone_token': temp_clone_token,
            'allow_squash_merge': allow_squash_merge,
            'allow_auto_merge': allow_auto_merge,
            'delete_branch_on_merge': delete_branch_on_merge,
            'allow_merge_commit': allow_merge_commit,
            'allow_update_branch': allow_update_branch,
            'use_squash_pr_title_as_default': use_squash_pr_title_as_default,
            'squash_merge_commit_title': squash_merge_commit_title?.toJson(),
            'squash_merge_commit_message': squash_merge_commit_message?.toJson(),
            'merge_commit_title': merge_commit_title?.toJson(),
            'merge_commit_message': merge_commit_message?.toJson(),
            'allow_forking': allow_forking,
            'web_commit_signoff_required': web_commit_signoff_required,
            'subscribers_count': subscribers_count,
            'network_count': network_count,
            'license': license.toJson(),
            'organization': organization?.toJson(),
            'parent': parent?.toJson(),
            'source': source?.toJson(),
            'forks': forks,
            'master_branch': master_branch,
            'open_issues': open_issues,
            'watchers': watchers,
            'anonymous_access_enabled': anonymous_access_enabled,
            'code_of_conduct': code_of_conduct?.toJson(),
            'security_and_analysis': security_and_analysis?.toJson(),
            'custom_properties': custom_properties.map((key, value) => MapEntry(key, value)).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          full_name,
          owner,
          private,
          html_url,
          description,
          fork,
          url,
          archive_url,
          assignees_url,
          blobs_url,
          branches_url,
          collaborators_url,
          comments_url,
          commits_url,
          compare_url,
          contents_url,
          contributors_url,
          deployments_url,
          downloads_url,
          events_url,
          forks_url,
          git_commits_url,
          git_refs_url,
          git_tags_url,
          git_url,
          issue_comment_url,
          issue_events_url,
          issues_url,
          keys_url,
          labels_url,
          languages_url,
          merges_url,
          milestones_url,
          notifications_url,
          pulls_url,
          releases_url,
          ssh_url,
          stargazers_url,
          statuses_url,
          subscribers_url,
          subscription_url,
          tags_url,
          teams_url,
          trees_url,
          clone_url,
          mirror_url,
          hooks_url,
          svn_url,
          homepage,
          language,
          forks_count,
          stargazers_count,
          watchers_count,
          size,
          default_branch,
          open_issues_count,
          is_template,
          topics,
          has_issues,
          has_projects,
          has_wiki,
          has_pages,
          has_downloads,
          has_discussions,
          archived,
          disabled,
          visibility,
          pushed_at,
          created_at,
          updated_at,
          permissions,
          allow_rebase_merge,
          template_repository,
          temp_clone_token,
          allow_squash_merge,
          allow_auto_merge,
          delete_branch_on_merge,
          allow_merge_commit,
          allow_update_branch,
          use_squash_pr_title_as_default,
          squash_merge_commit_title,
          squash_merge_commit_message,
          merge_commit_title,
          merge_commit_message,
          allow_forking,
          web_commit_signoff_required,
          subscribers_count,
          network_count,
          license,
          organization,
          parent,
          source,
          forks,
          master_branch,
          open_issues,
          watchers,
          anonymous_access_enabled,
          code_of_conduct,
          security_and_analysis,
          custom_properties,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Full-repository
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && full_name == other.full_name
            && owner == other.owner
            && private == other.private
            && html_url == other.html_url
            && description == other.description
            && fork == other.fork
            && url == other.url
            && archive_url == other.archive_url
            && assignees_url == other.assignees_url
            && blobs_url == other.blobs_url
            && branches_url == other.branches_url
            && collaborators_url == other.collaborators_url
            && comments_url == other.comments_url
            && commits_url == other.commits_url
            && compare_url == other.compare_url
            && contents_url == other.contents_url
            && contributors_url == other.contributors_url
            && deployments_url == other.deployments_url
            && downloads_url == other.downloads_url
            && events_url == other.events_url
            && forks_url == other.forks_url
            && git_commits_url == other.git_commits_url
            && git_refs_url == other.git_refs_url
            && git_tags_url == other.git_tags_url
            && git_url == other.git_url
            && issue_comment_url == other.issue_comment_url
            && issue_events_url == other.issue_events_url
            && issues_url == other.issues_url
            && keys_url == other.keys_url
            && labels_url == other.labels_url
            && languages_url == other.languages_url
            && merges_url == other.merges_url
            && milestones_url == other.milestones_url
            && notifications_url == other.notifications_url
            && pulls_url == other.pulls_url
            && releases_url == other.releases_url
            && ssh_url == other.ssh_url
            && stargazers_url == other.stargazers_url
            && statuses_url == other.statuses_url
            && subscribers_url == other.subscribers_url
            && subscription_url == other.subscription_url
            && tags_url == other.tags_url
            && teams_url == other.teams_url
            && trees_url == other.trees_url
            && clone_url == other.clone_url
            && mirror_url == other.mirror_url
            && hooks_url == other.hooks_url
            && svn_url == other.svn_url
            && homepage == other.homepage
            && language == other.language
            && forks_count == other.forks_count
            && stargazers_count == other.stargazers_count
            && watchers_count == other.watchers_count
            && size == other.size
            && default_branch == other.default_branch
            && open_issues_count == other.open_issues_count
            && is_template == other.is_template
            && listsEqual(topics, other.topics)
            && has_issues == other.has_issues
            && has_projects == other.has_projects
            && has_wiki == other.has_wiki
            && has_pages == other.has_pages
            && has_downloads == other.has_downloads
            && has_discussions == other.has_discussions
            && archived == other.archived
            && disabled == other.disabled
            && visibility == other.visibility
            && pushed_at == other.pushed_at
            && created_at == other.created_at
            && updated_at == other.updated_at
            && permissions == other.permissions
            && allow_rebase_merge == other.allow_rebase_merge
            && template_repository == other.template_repository
            && temp_clone_token == other.temp_clone_token
            && allow_squash_merge == other.allow_squash_merge
            && allow_auto_merge == other.allow_auto_merge
            && delete_branch_on_merge == other.delete_branch_on_merge
            && allow_merge_commit == other.allow_merge_commit
            && allow_update_branch == other.allow_update_branch
            && use_squash_pr_title_as_default == other.use_squash_pr_title_as_default
            && squash_merge_commit_title == other.squash_merge_commit_title
            && squash_merge_commit_message == other.squash_merge_commit_message
            && merge_commit_title == other.merge_commit_title
            && merge_commit_message == other.merge_commit_message
            && allow_forking == other.allow_forking
            && web_commit_signoff_required == other.web_commit_signoff_required
            && subscribers_count == other.subscribers_count
            && network_count == other.network_count
            && license == other.license
            && organization == other.organization
            && parent == other.parent
            && source == other.source
            && forks == other.forks
            && master_branch == other.master_branch
            && open_issues == other.open_issues
            && watchers == other.watchers
            && anonymous_access_enabled == other.anonymous_access_enabled
            && code_of_conduct == other.code_of_conduct
            && security_and_analysis == other.security_and_analysis
            && mapsEqual(custom_properties, other.custom_properties)
        ;
    }
}
