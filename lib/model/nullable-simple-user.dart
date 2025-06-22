import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Nullable-simple-user {
    Nullable-simple-user(
        {  this.name, this.email,required this.login,required this.id,required this.node_id,required this.avatar_url,required this.gravatar_id,required this.url,required this.html_url,required this.followers_url,required this.following_url,required this.gists_url,required this.starred_url,required this.subscriptions_url,required this.organizations_url,required this.repos_url,required this.events_url,required this.received_events_url,required this.type,required this.site_admin, this.starred_at, this.user_view_type,
         }
    );

    factory Nullable-simple-user.fromJson(Map<String, dynamic>
        json) {
        return Nullable-simple-user(
            name: json['name'] as String? ,
            email: json['email'] as String? ,
            login: json['login'] as String ,
            id: (json['id'] as int).toInt() ,
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
            starred_at: json['starred_at'] as String? ,
            user_view_type: json['user_view_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-simple-user? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-simple-user.fromJson(json);
    }

    final  String? name;
    final  String? email;
    final String  login;
    final int  id;
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
    final  String? starred_at;
    final  String? user_view_type;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'email': email,
            'login': login,
            'id': id,
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
            'starred_at': starred_at,
            'user_view_type': user_view_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          email,
          login,
          id,
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
          starred_at,
          user_view_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-simple-user
            && name == other.name
            && email == other.email
            && login == other.login
            && id == other.id
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
            && starred_at == other.starred_at
            && user_view_type == other.user_view_type
        ;
    }
}
