import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/root.dart';
import 'package:github/model/root.dart';

@immutable
class Root {
  Root({
    required this.current_user_url,
    required this.current_user_authorizations_html_url,
    required this.authorizations_url,
    required this.code_search_url,
    required this.commit_search_url,
    required this.emails_url,
    required this.emojis_url,
    required this.events_url,
    required this.feeds_url,
    required this.followers_url,
    required this.following_url,
    required this.gists_url,
    this.hub_url,
    required this.issue_search_url,
    required this.issues_url,
    required this.keys_url,
    required this.label_search_url,
    required this.notifications_url,
    required this.organization_url,
    required this.organization_repositories_url,
    required this.organization_teams_url,
    required this.public_gists_url,
    required this.rate_limit_url,
    required this.repository_url,
    required this.repository_search_url,
    required this.current_user_repositories_url,
    required this.starred_url,
    required this.starred_gists_url,
    this.topic_search_url,
    required this.user_url,
    required this.user_organizations_url,
    required this.user_repositories_url,
    required this.user_search_url,
  });

  factory Root.fromJson(Map<String, dynamic> json) {
    return Root(
      current_user_url: json['current_user_url'] as String,
      current_user_authorizations_html_url:
          json['current_user_authorizations_html_url'] as String,
      authorizations_url: json['authorizations_url'] as String,
      code_search_url: json['code_search_url'] as String,
      commit_search_url: json['commit_search_url'] as String,
      emails_url: json['emails_url'] as String,
      emojis_url: json['emojis_url'] as String,
      events_url: json['events_url'] as String,
      feeds_url: json['feeds_url'] as String,
      followers_url: json['followers_url'] as String,
      following_url: json['following_url'] as String,
      gists_url: json['gists_url'] as String,
      hub_url: json['hub_url'] as String?,
      issue_search_url: json['issue_search_url'] as String,
      issues_url: json['issues_url'] as String,
      keys_url: json['keys_url'] as String,
      label_search_url: json['label_search_url'] as String,
      notifications_url: json['notifications_url'] as String,
      organization_url: json['organization_url'] as String,
      organization_repositories_url:
          json['organization_repositories_url'] as String,
      organization_teams_url: json['organization_teams_url'] as String,
      public_gists_url: json['public_gists_url'] as String,
      rate_limit_url: json['rate_limit_url'] as String,
      repository_url: json['repository_url'] as String,
      repository_search_url: json['repository_search_url'] as String,
      current_user_repositories_url:
          json['current_user_repositories_url'] as String,
      starred_url: json['starred_url'] as String,
      starred_gists_url: json['starred_gists_url'] as String,
      topic_search_url: json['topic_search_url'] as String?,
      user_url: json['user_url'] as String,
      user_organizations_url: json['user_organizations_url'] as String,
      user_repositories_url: json['user_repositories_url'] as String,
      user_search_url: json['user_search_url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Root? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Root.fromJson(json);
  }

  final String current_user_url;
  final String current_user_authorizations_html_url;
  final String authorizations_url;
  final String code_search_url;
  final String commit_search_url;
  final String emails_url;
  final String emojis_url;
  final String events_url;
  final String feeds_url;
  final String followers_url;
  final String following_url;
  final String gists_url;
  final String? hub_url;
  final String issue_search_url;
  final String issues_url;
  final String keys_url;
  final String label_search_url;
  final String notifications_url;
  final String organization_url;
  final String organization_repositories_url;
  final String organization_teams_url;
  final String public_gists_url;
  final String rate_limit_url;
  final String repository_url;
  final String repository_search_url;
  final String current_user_repositories_url;
  final String starred_url;
  final String starred_gists_url;
  final String? topic_search_url;
  final String user_url;
  final String user_organizations_url;
  final String user_repositories_url;
  final String user_search_url;

  Map<String, dynamic> toJson() {
    return {
      'current_user_url': current_user_url,
      'current_user_authorizations_html_url':
          current_user_authorizations_html_url,
      'authorizations_url': authorizations_url,
      'code_search_url': code_search_url,
      'commit_search_url': commit_search_url,
      'emails_url': emails_url,
      'emojis_url': emojis_url,
      'events_url': events_url,
      'feeds_url': feeds_url,
      'followers_url': followers_url,
      'following_url': following_url,
      'gists_url': gists_url,
      'hub_url': hub_url,
      'issue_search_url': issue_search_url,
      'issues_url': issues_url,
      'keys_url': keys_url,
      'label_search_url': label_search_url,
      'notifications_url': notifications_url,
      'organization_url': organization_url,
      'organization_repositories_url': organization_repositories_url,
      'organization_teams_url': organization_teams_url,
      'public_gists_url': public_gists_url,
      'rate_limit_url': rate_limit_url,
      'repository_url': repository_url,
      'repository_search_url': repository_search_url,
      'current_user_repositories_url': current_user_repositories_url,
      'starred_url': starred_url,
      'starred_gists_url': starred_gists_url,
      'topic_search_url': topic_search_url,
      'user_url': user_url,
      'user_organizations_url': user_organizations_url,
      'user_repositories_url': user_repositories_url,
      'user_search_url': user_search_url,
    };
  }

  @override
  int get hashCode => Object.hash(
    current_user_url,
    current_user_authorizations_html_url,
    authorizations_url,
    code_search_url,
    commit_search_url,
    emails_url,
    emojis_url,
    events_url,
    feeds_url,
    followers_url,
    following_url,
    gists_url,
    hub_url,
    issue_search_url,
    issues_url,
    keys_url,
    label_search_url,
    notifications_url,
    organization_url,
    organization_repositories_url,
    organization_teams_url,
    public_gists_url,
    rate_limit_url,
    repository_url,
    repository_search_url,
    current_user_repositories_url,
    starred_url,
    starred_gists_url,
    topic_search_url,
    user_url,
    user_organizations_url,
    user_repositories_url,
    user_search_url,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Root &&
        current_user_url == other.current_user_url &&
        current_user_authorizations_html_url ==
            other.current_user_authorizations_html_url &&
        authorizations_url == other.authorizations_url &&
        code_search_url == other.code_search_url &&
        commit_search_url == other.commit_search_url &&
        emails_url == other.emails_url &&
        emojis_url == other.emojis_url &&
        events_url == other.events_url &&
        feeds_url == other.feeds_url &&
        followers_url == other.followers_url &&
        following_url == other.following_url &&
        gists_url == other.gists_url &&
        hub_url == other.hub_url &&
        issue_search_url == other.issue_search_url &&
        issues_url == other.issues_url &&
        keys_url == other.keys_url &&
        label_search_url == other.label_search_url &&
        notifications_url == other.notifications_url &&
        organization_url == other.organization_url &&
        organization_repositories_url == other.organization_repositories_url &&
        organization_teams_url == other.organization_teams_url &&
        public_gists_url == other.public_gists_url &&
        rate_limit_url == other.rate_limit_url &&
        repository_url == other.repository_url &&
        repository_search_url == other.repository_search_url &&
        current_user_repositories_url == other.current_user_repositories_url &&
        starred_url == other.starred_url &&
        starred_gists_url == other.starred_gists_url &&
        topic_search_url == other.topic_search_url &&
        user_url == other.user_url &&
        user_organizations_url == other.user_organizations_url &&
        user_repositories_url == other.user_repositories_url &&
        user_search_url == other.user_search_url;
  }
}
