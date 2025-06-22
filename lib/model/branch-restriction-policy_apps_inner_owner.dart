import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
@immutable
class Branch-restriction-policyAppsInnerOwner {
    Branch-restriction-policyAppsInnerOwner(
        {  this.login, this.id, this.node_id, this.url, this.repos_url, this.events_url, this.hooks_url, this.issues_url, this.members_url, this.public_members_url, this.avatar_url, this.description, this.gravatar_id, this.html_url, this.followers_url, this.following_url, this.gists_url, this.starred_url, this.subscriptions_url, this.organizations_url, this.received_events_url, this.type, this.site_admin, this.user_view_type,
         }
    );

    factory Branch-restriction-policyAppsInnerOwner.fromJson(Map<String, dynamic>
        json) {
        return Branch-restriction-policyAppsInnerOwner(
            login: json['login'] as String? ,
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            url: json['url'] as String? ,
            repos_url: json['repos_url'] as String? ,
            events_url: json['events_url'] as String? ,
            hooks_url: json['hooks_url'] as String? ,
            issues_url: json['issues_url'] as String? ,
            members_url: json['members_url'] as String? ,
            public_members_url: json['public_members_url'] as String? ,
            avatar_url: json['avatar_url'] as String? ,
            description: json['description'] as String? ,
            gravatar_id: json['gravatar_id'] as String? ,
            html_url: json['html_url'] as String? ,
            followers_url: json['followers_url'] as String? ,
            following_url: json['following_url'] as String? ,
            gists_url: json['gists_url'] as String? ,
            starred_url: json['starred_url'] as String? ,
            subscriptions_url: json['subscriptions_url'] as String? ,
            organizations_url: json['organizations_url'] as String? ,
            received_events_url: json['received_events_url'] as String? ,
            type: json['type'] as String? ,
            site_admin: (json['site_admin'] as bool?) ,
            user_view_type: json['user_view_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-restriction-policyAppsInnerOwner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-restriction-policyAppsInnerOwner.fromJson(json);
    }

    final  String? login;
    final  int? id;
    final  String? node_id;
    final  String? url;
    final  String? repos_url;
    final  String? events_url;
    final  String? hooks_url;
    final  String? issues_url;
    final  String? members_url;
    final  String? public_members_url;
    final  String? avatar_url;
    final  String? description;
    final  String? gravatar_id;
    final  String? html_url;
    final  String? followers_url;
    final  String? following_url;
    final  String? gists_url;
    final  String? starred_url;
    final  String? subscriptions_url;
    final  String? organizations_url;
    final  String? received_events_url;
    final  String? type;
    final  bool? site_admin;
    final  String? user_view_type;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'id': id,
            'node_id': node_id,
            'url': url,
            'repos_url': repos_url,
            'events_url': events_url,
            'hooks_url': hooks_url,
            'issues_url': issues_url,
            'members_url': members_url,
            'public_members_url': public_members_url,
            'avatar_url': avatar_url,
            'description': description,
            'gravatar_id': gravatar_id,
            'html_url': html_url,
            'followers_url': followers_url,
            'following_url': following_url,
            'gists_url': gists_url,
            'starred_url': starred_url,
            'subscriptions_url': subscriptions_url,
            'organizations_url': organizations_url,
            'received_events_url': received_events_url,
            'type': type,
            'site_admin': site_admin,
            'user_view_type': user_view_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          login,
          id,
          node_id,
          url,
          repos_url,
          events_url,
          hooks_url,
          issues_url,
          members_url,
          public_members_url,
          avatar_url,
          description,
          gravatar_id,
          html_url,
          followers_url,
          following_url,
          gists_url,
          starred_url,
          subscriptions_url,
          organizations_url,
          received_events_url,
          type,
          site_admin,
          user_view_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-restriction-policyAppsInnerOwner
            && login == other.login
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && repos_url == other.repos_url
            && events_url == other.events_url
            && hooks_url == other.hooks_url
            && issues_url == other.issues_url
            && members_url == other.members_url
            && public_members_url == other.public_members_url
            && avatar_url == other.avatar_url
            && description == other.description
            && gravatar_id == other.gravatar_id
            && html_url == other.html_url
            && followers_url == other.followers_url
            && following_url == other.following_url
            && gists_url == other.gists_url
            && starred_url == other.starred_url
            && subscriptions_url == other.subscriptions_url
            && organizations_url == other.organizations_url
            && received_events_url == other.received_events_url
            && type == other.type
            && site_admin == other.site_admin
            && user_view_type == other.user_view_type
        ;
    }
}
