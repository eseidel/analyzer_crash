import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
@immutable
class Private-user {
    Private-user(
        { required this.login,required this.id, this.user_view_type,required this.node_id,required this.avatar_url,required this.gravatar_id,required this.url,required this.html_url,required this.followers_url,required this.following_url,required this.gists_url,required this.starred_url,required this.subscriptions_url,required this.organizations_url,required this.repos_url,required this.events_url,required this.received_events_url,required this.type,required this.site_admin,required this.name,required this.company,required this.blog,required this.location,required this.email, this.notification_email,required this.hireable,required this.bio, this.twitter_username,required this.public_repos,required this.public_gists,required this.followers,required this.following,required this.created_at,required this.updated_at,required this.private_gists,required this.total_private_repos,required this.owned_private_repos,required this.disk_usage,required this.collaborators,required this.two_factor_authentication, this.plan, this.business_plus, this.ldap_dn,
         }
    );

    factory Private-user.fromJson(Map<String, dynamic>
        json) {
        return Private-user(
            login: json['login'] as String ,
            id: (json['id'] as int).toInt() ,
            user_view_type: json['user_view_type'] as String? ,
            node_id: json['node_id'] as String ,
            avatar_url: json['avatar_url'] as String ,
            gravatar_id: json['gravatar_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            followers_url: json['followers_url'] as String ,
            following_url: json['following_url'] as String ,
            gists_url: json['gists_url'] as String ,
            starred_url: json['starred_url'] as String ,
            subscriptions_url: json['subscriptions_url'] as String ,
            organizations_url: json['organizations_url'] as String ,
            repos_url: json['repos_url'] as String ,
            events_url: json['events_url'] as String ,
            received_events_url: json['received_events_url'] as String ,
            type: json['type'] as String ,
            site_admin: (json['site_admin'] as bool) ,
            name: json['name'] as String ,
            company: json['company'] as String ,
            blog: json['blog'] as String ,
            location: json['location'] as String ,
            email: json['email'] as String ,
            notification_email: json['notification_email'] as String? ,
            hireable: (json['hireable'] as bool) ,
            bio: json['bio'] as String ,
            twitter_username: json['twitter_username'] as String? ,
            public_repos: (json['public_repos'] as int).toInt() ,
            public_gists: (json['public_gists'] as int).toInt() ,
            followers: (json['followers'] as int).toInt() ,
            following: (json['following'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            private_gists: (json['private_gists'] as int).toInt() ,
            total_private_repos: (json['total_private_repos'] as int).toInt() ,
            owned_private_repos: (json['owned_private_repos'] as int).toInt() ,
            disk_usage: (json['disk_usage'] as int).toInt() ,
            collaborators: (json['collaborators'] as int).toInt() ,
            two_factor_authentication: (json['two_factor_authentication'] as bool) ,
            plan: Private-userPlan.maybeFromJson(json['plan'] as Map<String, dynamic>?) ,
            business_plus: (json['business_plus'] as bool?) ,
            ldap_dn: json['ldap_dn'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Private-user? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Private-user.fromJson(json);
    }

    final String  login;
    final int  id;
    final  String? user_view_type;
    final String  node_id;
    final String  avatar_url;
    final String  gravatar_id;
    final String  url;
    final String  html_url;
    final String  followers_url;
    final String  following_url;
    final String  gists_url;
    final String  starred_url;
    final String  subscriptions_url;
    final String  organizations_url;
    final String  repos_url;
    final String  events_url;
    final String  received_events_url;
    final String  type;
    final bool  site_admin;
    final String  name;
    final String  company;
    final String  blog;
    final String  location;
    final String  email;
    final  String? notification_email;
    final bool  hireable;
    final String  bio;
    final  String? twitter_username;
    final int  public_repos;
    final int  public_gists;
    final int  followers;
    final int  following;
    final DateTime  created_at;
    final DateTime  updated_at;
    final int  private_gists;
    final int  total_private_repos;
    final int  owned_private_repos;
    final int  disk_usage;
    final int  collaborators;
    final bool  two_factor_authentication;
    final  Private-userPlan? plan;
    final  bool? business_plus;
    final  String? ldap_dn;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'id': id,
            'user_view_type': user_view_type,
            'node_id': node_id,
            'avatar_url': avatar_url,
            'gravatar_id': gravatar_id,
            'url': url,
            'html_url': html_url,
            'followers_url': followers_url,
            'following_url': following_url,
            'gists_url': gists_url,
            'starred_url': starred_url,
            'subscriptions_url': subscriptions_url,
            'organizations_url': organizations_url,
            'repos_url': repos_url,
            'events_url': events_url,
            'received_events_url': received_events_url,
            'type': type,
            'site_admin': site_admin,
            'name': name,
            'company': company,
            'blog': blog,
            'location': location,
            'email': email,
            'notification_email': notification_email,
            'hireable': hireable,
            'bio': bio,
            'twitter_username': twitter_username,
            'public_repos': public_repos,
            'public_gists': public_gists,
            'followers': followers,
            'following': following,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'private_gists': private_gists,
            'total_private_repos': total_private_repos,
            'owned_private_repos': owned_private_repos,
            'disk_usage': disk_usage,
            'collaborators': collaborators,
            'two_factor_authentication': two_factor_authentication,
            'plan': plan?.toJson(),
            'business_plus': business_plus,
            'ldap_dn': ldap_dn,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          login,
          id,
          user_view_type,
          node_id,
          avatar_url,
          gravatar_id,
          url,
          html_url,
          followers_url,
          following_url,
          gists_url,
          starred_url,
          subscriptions_url,
          organizations_url,
          repos_url,
          events_url,
          received_events_url,
          type,
          site_admin,
          name,
          company,
          blog,
          location,
          email,
          notification_email,
          hireable,
          bio,
          twitter_username,
          public_repos,
          public_gists,
          followers,
          following,
          created_at,
          updated_at,
          private_gists,
          total_private_repos,
          owned_private_repos,
          disk_usage,
          collaborators,
          two_factor_authentication,
          plan,
          business_plus,
          ldap_dn,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Private-user
            && login == other.login
            && id == other.id
            && user_view_type == other.user_view_type
            && node_id == other.node_id
            && avatar_url == other.avatar_url
            && gravatar_id == other.gravatar_id
            && url == other.url
            && html_url == other.html_url
            && followers_url == other.followers_url
            && following_url == other.following_url
            && gists_url == other.gists_url
            && starred_url == other.starred_url
            && subscriptions_url == other.subscriptions_url
            && organizations_url == other.organizations_url
            && repos_url == other.repos_url
            && events_url == other.events_url
            && received_events_url == other.received_events_url
            && type == other.type
            && site_admin == other.site_admin
            && name == other.name
            && company == other.company
            && blog == other.blog
            && location == other.location
            && email == other.email
            && notification_email == other.notification_email
            && hireable == other.hireable
            && bio == other.bio
            && twitter_username == other.twitter_username
            && public_repos == other.public_repos
            && public_gists == other.public_gists
            && followers == other.followers
            && following == other.following
            && created_at == other.created_at
            && updated_at == other.updated_at
            && private_gists == other.private_gists
            && total_private_repos == other.total_private_repos
            && owned_private_repos == other.owned_private_repos
            && disk_usage == other.disk_usage
            && collaborators == other.collaborators
            && two_factor_authentication == other.two_factor_authentication
            && plan == other.plan
            && business_plus == other.business_plus
            && ldap_dn == other.ldap_dn
        ;
    }
}
