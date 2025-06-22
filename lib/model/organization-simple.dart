import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/organization-simple.dart';
@immutable
class Organization-simple {
    Organization-simple(
        { required this.login,required this.id,required this.node_id,required this.url,required this.repos_url,required this.events_url,required this.hooks_url,required this.issues_url,required this.members_url,required this.public_members_url,required this.avatar_url,required this.description,
         }
    );

    factory Organization-simple.fromJson(Map<String, dynamic>
        json) {
        return Organization-simple(
            login: json['login'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            repos_url: json['repos_url'] as String ,
            events_url: json['events_url'] as String ,
            hooks_url: json['hooks_url'] as String ,
            issues_url: json['issues_url'] as String ,
            members_url: json['members_url'] as String ,
            public_members_url: json['public_members_url'] as String ,
            avatar_url: json['avatar_url'] as String ,
            description: json['description'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-simple.fromJson(json);
    }

    final String  login;
    final int  id;
    final String  node_id;
    final String  url;
    final String  repos_url;
    final String  events_url;
    final String  hooks_url;
    final String  issues_url;
    final String  members_url;
    final String  public_members_url;
    final String  avatar_url;
    final String  description;


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
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-simple
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
        ;
    }
}
