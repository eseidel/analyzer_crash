import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repo-search-result-item.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/repo-search-result-item.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Repo-search-result-item {
    Repo-search-result-item(
        { required this.id,required this.node_id,required this.name,required this.full_name,required this.owner,required this.private,required this.html_url,required this.description,required this.fork,required this.url,required this.created_at,required this.updated_at,required this.pushed_at,required this.homepage,required this.size,required this.stargazers_count,required this.watchers_count,required this.language,required this.forks_count,required this.open_issues_count, this.master_branch,required this.default_branch,required this.score,required this.forks_url,required this.keys_url,required this.collaborators_url,required this.teams_url,required this.hooks_url,required this.issue_events_url,required this.events_url,required this.assignees_url,required this.branches_url,required this.tags_url,required this.blobs_url,required this.git_tags_url,required this.git_refs_url,required this.trees_url,required this.statuses_url,required this.languages_url,required this.stargazers_url,required this.contributors_url,required this.subscribers_url,required this.subscription_url,required this.commits_url,required this.git_commits_url,required this.comments_url,required this.issue_comment_url,required this.contents_url,required this.compare_url,required this.merges_url,required this.archive_url,required this.downloads_url,required this.issues_url,required this.pulls_url,required this.milestones_url,required this.notifications_url,required this.labels_url,required this.releases_url,required this.deployments_url,required this.git_url,required this.ssh_url,required this.clone_url,required this.svn_url,required this.forks,required this.open_issues,required this.watchers, this.topics = const [],required this.mirror_url,required this.has_issues,required this.has_projects,required this.has_pages,required this.has_wiki,required this.has_downloads, this.has_discussions,required this.archived,required this.disabled, this.visibility,required this.license, this.permissions, this.text_matches = const [], this.temp_clone_token, this.allow_merge_commit, this.allow_squash_merge, this.allow_rebase_merge, this.allow_auto_merge, this.delete_branch_on_merge, this.allow_forking, this.is_template, this.web_commit_signoff_required,
         }
    );

    factory Repo-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Repo-search-result-item(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            full_name: json['full_name'] as String ,
            owner: Nullable-simple-user.fromJson(json['owner'] as Map<String, dynamic>) ,
            private: (json['private'] as bool) ,
            html_url: json['html_url'] as String ,
            description: json['description'] as String ,
            fork: (json['fork'] as bool) ,
            url: json['url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            pushed_at: DateTime.parse(json['pushed_at'] as String),
            homepage: json['homepage'] as String ,
            size: (json['size'] as int).toInt() ,
            stargazers_count: (json['stargazers_count'] as int).toInt() ,
            watchers_count: (json['watchers_count'] as int).toInt() ,
            language: json['language'] as String ,
            forks_count: (json['forks_count'] as int).toInt() ,
            open_issues_count: (json['open_issues_count'] as int).toInt() ,
            master_branch: json['master_branch'] as String? ,
            default_branch: json['default_branch'] as String ,
            score: (json['score'] as num).toDouble() ,
            forks_url: json['forks_url'] as String ,
            keys_url: json['keys_url'] as String ,
            collaborators_url: json['collaborators_url'] as String ,
            teams_url: json['teams_url'] as String ,
            hooks_url: json['hooks_url'] as String ,
            issue_events_url: json['issue_events_url'] as String ,
            events_url: json['events_url'] as String ,
            assignees_url: json['assignees_url'] as String ,
            branches_url: json['branches_url'] as String ,
            tags_url: json['tags_url'] as String ,
            blobs_url: json['blobs_url'] as String ,
            git_tags_url: json['git_tags_url'] as String ,
            git_refs_url: json['git_refs_url'] as String ,
            trees_url: json['trees_url'] as String ,
            statuses_url: json['statuses_url'] as String ,
            languages_url: json['languages_url'] as String ,
            stargazers_url: json['stargazers_url'] as String ,
            contributors_url: json['contributors_url'] as String ,
            subscribers_url: json['subscribers_url'] as String ,
            subscription_url: json['subscription_url'] as String ,
            commits_url: json['commits_url'] as String ,
            git_commits_url: json['git_commits_url'] as String ,
            comments_url: json['comments_url'] as String ,
            issue_comment_url: json['issue_comment_url'] as String ,
            contents_url: json['contents_url'] as String ,
            compare_url: json['compare_url'] as String ,
            merges_url: json['merges_url'] as String ,
            archive_url: json['archive_url'] as String ,
            downloads_url: json['downloads_url'] as String ,
            issues_url: json['issues_url'] as String ,
            pulls_url: json['pulls_url'] as String ,
            milestones_url: json['milestones_url'] as String ,
            notifications_url: json['notifications_url'] as String ,
            labels_url: json['labels_url'] as String ,
            releases_url: json['releases_url'] as String ,
            deployments_url: json['deployments_url'] as String ,
            git_url: json['git_url'] as String ,
            ssh_url: json['ssh_url'] as String ,
            clone_url: json['clone_url'] as String ,
            svn_url: json['svn_url'] as String ,
            forks: (json['forks'] as int).toInt() ,
            open_issues: (json['open_issues'] as int).toInt() ,
            watchers: (json['watchers'] as int).toInt() ,
            topics: (json['topics'] as List?)?.cast<String>() ,
            mirror_url: json['mirror_url'] as String ,
            has_issues: (json['has_issues'] as bool) ,
            has_projects: (json['has_projects'] as bool) ,
            has_pages: (json['has_pages'] as bool) ,
            has_wiki: (json['has_wiki'] as bool) ,
            has_downloads: (json['has_downloads'] as bool) ,
            has_discussions: (json['has_discussions'] as bool?) ,
            archived: (json['archived'] as bool) ,
            disabled: (json['disabled'] as bool) ,
            visibility: json['visibility'] as String? ,
            license: Nullable-license-simple.fromJson(json['license'] as Map<String, dynamic>) ,
            permissions: Repo-search-result-itemPermissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            temp_clone_token: json['temp_clone_token'] as String? ,
            allow_merge_commit: (json['allow_merge_commit'] as bool?) ,
            allow_squash_merge: (json['allow_squash_merge'] as bool?) ,
            allow_rebase_merge: (json['allow_rebase_merge'] as bool?) ,
            allow_auto_merge: (json['allow_auto_merge'] as bool?) ,
            delete_branch_on_merge: (json['delete_branch_on_merge'] as bool?) ,
            allow_forking: (json['allow_forking'] as bool?) ,
            is_template: (json['is_template'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repo-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repo-search-result-item.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  name;
    final String  full_name;
    final Nullable-simple-user  owner;
    final bool  private;
    final String  html_url;
    final String  description;
    final bool  fork;
    final String  url;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  pushed_at;
    final String  homepage;
    final int  size;
    final int  stargazers_count;
    final int  watchers_count;
    final String  language;
    final int  forks_count;
    final int  open_issues_count;
    final  String? master_branch;
    final String  default_branch;
    final double  score;
    final String  forks_url;
    final String  keys_url;
    final String  collaborators_url;
    final String  teams_url;
    final String  hooks_url;
    final String  issue_events_url;
    final String  events_url;
    final String  assignees_url;
    final String  branches_url;
    final String  tags_url;
    final String  blobs_url;
    final String  git_tags_url;
    final String  git_refs_url;
    final String  trees_url;
    final String  statuses_url;
    final String  languages_url;
    final String  stargazers_url;
    final String  contributors_url;
    final String  subscribers_url;
    final String  subscription_url;
    final String  commits_url;
    final String  git_commits_url;
    final String  comments_url;
    final String  issue_comment_url;
    final String  contents_url;
    final String  compare_url;
    final String  merges_url;
    final String  archive_url;
    final String  downloads_url;
    final String  issues_url;
    final String  pulls_url;
    final String  milestones_url;
    final String  notifications_url;
    final String  labels_url;
    final String  releases_url;
    final String  deployments_url;
    final String  git_url;
    final String  ssh_url;
    final String  clone_url;
    final String  svn_url;
    final int  forks;
    final int  open_issues;
    final int  watchers;
    final  List<String>? topics;
    final String  mirror_url;
    final bool  has_issues;
    final bool  has_projects;
    final bool  has_pages;
    final bool  has_wiki;
    final bool  has_downloads;
    final  bool? has_discussions;
    final bool  archived;
    final bool  disabled;
    final  String? visibility;
    final Nullable-license-simple  license;
    final  Repo-search-result-itemPermissions? permissions;
    final  List<Search-result-text-matchesInner>? text_matches;
    final  String? temp_clone_token;
    final  bool? allow_merge_commit;
    final  bool? allow_squash_merge;
    final  bool? allow_rebase_merge;
    final  bool? allow_auto_merge;
    final  bool? delete_branch_on_merge;
    final  bool? allow_forking;
    final  bool? is_template;
    final  bool? web_commit_signoff_required;


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
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'pushed_at': pushed_at.toIso8601String(),
            'homepage': homepage,
            'size': size,
            'stargazers_count': stargazers_count,
            'watchers_count': watchers_count,
            'language': language,
            'forks_count': forks_count,
            'open_issues_count': open_issues_count,
            'master_branch': master_branch,
            'default_branch': default_branch,
            'score': score,
            'forks_url': forks_url,
            'keys_url': keys_url,
            'collaborators_url': collaborators_url,
            'teams_url': teams_url,
            'hooks_url': hooks_url,
            'issue_events_url': issue_events_url,
            'events_url': events_url,
            'assignees_url': assignees_url,
            'branches_url': branches_url,
            'tags_url': tags_url,
            'blobs_url': blobs_url,
            'git_tags_url': git_tags_url,
            'git_refs_url': git_refs_url,
            'trees_url': trees_url,
            'statuses_url': statuses_url,
            'languages_url': languages_url,
            'stargazers_url': stargazers_url,
            'contributors_url': contributors_url,
            'subscribers_url': subscribers_url,
            'subscription_url': subscription_url,
            'commits_url': commits_url,
            'git_commits_url': git_commits_url,
            'comments_url': comments_url,
            'issue_comment_url': issue_comment_url,
            'contents_url': contents_url,
            'compare_url': compare_url,
            'merges_url': merges_url,
            'archive_url': archive_url,
            'downloads_url': downloads_url,
            'issues_url': issues_url,
            'pulls_url': pulls_url,
            'milestones_url': milestones_url,
            'notifications_url': notifications_url,
            'labels_url': labels_url,
            'releases_url': releases_url,
            'deployments_url': deployments_url,
            'git_url': git_url,
            'ssh_url': ssh_url,
            'clone_url': clone_url,
            'svn_url': svn_url,
            'forks': forks,
            'open_issues': open_issues,
            'watchers': watchers,
            'topics': topics,
            'mirror_url': mirror_url,
            'has_issues': has_issues,
            'has_projects': has_projects,
            'has_pages': has_pages,
            'has_wiki': has_wiki,
            'has_downloads': has_downloads,
            'has_discussions': has_discussions,
            'archived': archived,
            'disabled': disabled,
            'visibility': visibility,
            'license': license.toJson(),
            'permissions': permissions?.toJson(),
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
            'temp_clone_token': temp_clone_token,
            'allow_merge_commit': allow_merge_commit,
            'allow_squash_merge': allow_squash_merge,
            'allow_rebase_merge': allow_rebase_merge,
            'allow_auto_merge': allow_auto_merge,
            'delete_branch_on_merge': delete_branch_on_merge,
            'allow_forking': allow_forking,
            'is_template': is_template,
            'web_commit_signoff_required': web_commit_signoff_required,
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
          created_at,
          updated_at,
          pushed_at,
          homepage,
          size,
          stargazers_count,
          watchers_count,
          language,
          forks_count,
          open_issues_count,
          master_branch,
          default_branch,
          score,
          forks_url,
          keys_url,
          collaborators_url,
          teams_url,
          hooks_url,
          issue_events_url,
          events_url,
          assignees_url,
          branches_url,
          tags_url,
          blobs_url,
          git_tags_url,
          git_refs_url,
          trees_url,
          statuses_url,
          languages_url,
          stargazers_url,
          contributors_url,
          subscribers_url,
          subscription_url,
          commits_url,
          git_commits_url,
          comments_url,
          issue_comment_url,
          contents_url,
          compare_url,
          merges_url,
          archive_url,
          downloads_url,
          issues_url,
          pulls_url,
          milestones_url,
          notifications_url,
          labels_url,
          releases_url,
          deployments_url,
          git_url,
          ssh_url,
          clone_url,
          svn_url,
          forks,
          open_issues,
          watchers,
          topics,
          mirror_url,
          has_issues,
          has_projects,
          has_pages,
          has_wiki,
          has_downloads,
          has_discussions,
          archived,
          disabled,
          visibility,
          license,
          permissions,
          text_matches,
          temp_clone_token,
          allow_merge_commit,
          allow_squash_merge,
          allow_rebase_merge,
          allow_auto_merge,
          delete_branch_on_merge,
          allow_forking,
          is_template,
          web_commit_signoff_required,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repo-search-result-item
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
            && created_at == other.created_at
            && updated_at == other.updated_at
            && pushed_at == other.pushed_at
            && homepage == other.homepage
            && size == other.size
            && stargazers_count == other.stargazers_count
            && watchers_count == other.watchers_count
            && language == other.language
            && forks_count == other.forks_count
            && open_issues_count == other.open_issues_count
            && master_branch == other.master_branch
            && default_branch == other.default_branch
            && score == other.score
            && forks_url == other.forks_url
            && keys_url == other.keys_url
            && collaborators_url == other.collaborators_url
            && teams_url == other.teams_url
            && hooks_url == other.hooks_url
            && issue_events_url == other.issue_events_url
            && events_url == other.events_url
            && assignees_url == other.assignees_url
            && branches_url == other.branches_url
            && tags_url == other.tags_url
            && blobs_url == other.blobs_url
            && git_tags_url == other.git_tags_url
            && git_refs_url == other.git_refs_url
            && trees_url == other.trees_url
            && statuses_url == other.statuses_url
            && languages_url == other.languages_url
            && stargazers_url == other.stargazers_url
            && contributors_url == other.contributors_url
            && subscribers_url == other.subscribers_url
            && subscription_url == other.subscription_url
            && commits_url == other.commits_url
            && git_commits_url == other.git_commits_url
            && comments_url == other.comments_url
            && issue_comment_url == other.issue_comment_url
            && contents_url == other.contents_url
            && compare_url == other.compare_url
            && merges_url == other.merges_url
            && archive_url == other.archive_url
            && downloads_url == other.downloads_url
            && issues_url == other.issues_url
            && pulls_url == other.pulls_url
            && milestones_url == other.milestones_url
            && notifications_url == other.notifications_url
            && labels_url == other.labels_url
            && releases_url == other.releases_url
            && deployments_url == other.deployments_url
            && git_url == other.git_url
            && ssh_url == other.ssh_url
            && clone_url == other.clone_url
            && svn_url == other.svn_url
            && forks == other.forks
            && open_issues == other.open_issues
            && watchers == other.watchers
            && listsEqual(topics, other.topics)
            && mirror_url == other.mirror_url
            && has_issues == other.has_issues
            && has_projects == other.has_projects
            && has_pages == other.has_pages
            && has_wiki == other.has_wiki
            && has_downloads == other.has_downloads
            && has_discussions == other.has_discussions
            && archived == other.archived
            && disabled == other.disabled
            && visibility == other.visibility
            && license == other.license
            && permissions == other.permissions
            && listsEqual(text_matches, other.text_matches)
            && temp_clone_token == other.temp_clone_token
            && allow_merge_commit == other.allow_merge_commit
            && allow_squash_merge == other.allow_squash_merge
            && allow_rebase_merge == other.allow_rebase_merge
            && allow_auto_merge == other.allow_auto_merge
            && delete_branch_on_merge == other.delete_branch_on_merge
            && allow_forking == other.allow_forking
            && is_template == other.is_template
            && web_commit_signoff_required == other.web_commit_signoff_required
        ;
    }
}
