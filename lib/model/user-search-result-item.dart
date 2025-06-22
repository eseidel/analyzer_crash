import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class User-search-result-item {
    User-search-result-item(
        { required this.login,required this.id,required this.node_id,required this.avatar_url,required this.gravatar_id,required this.url,required this.html_url,required this.followers_url,required this.subscriptions_url,required this.organizations_url,required this.repos_url,required this.received_events_url,required this.type,required this.score,required this.following_url,required this.gists_url,required this.starred_url,required this.events_url, this.public_repos, this.public_gists, this.followers, this.following, this.created_at, this.updated_at, this.name, this.bio, this.email, this.location,required this.site_admin, this.hireable, this.text_matches = const [], this.blog, this.company, this.suspended_at, this.user_view_type,
         }
    );

    factory User-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return User-search-result-item(
            login: json['login'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            avatar_url: json['avatar_url'] as String ,
            gravatar_id: json['gravatar_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            followers_url: json['followers_url'] as String ,
            subscriptions_url: json['subscriptions_url'] as String ,
            organizations_url: json['organizations_url'] as String ,
            repos_url: json['repos_url'] as String ,
            received_events_url: json['received_events_url'] as String ,
            type: json['type'] as String ,
            score: (json['score'] as num).toDouble() ,
            following_url: json['following_url'] as String ,
            gists_url: json['gists_url'] as String ,
            starred_url: json['starred_url'] as String ,
            events_url: json['events_url'] as String ,
            public_repos: (json['public_repos'] as int?).toInt() ,
            public_gists: (json['public_gists'] as int?).toInt() ,
            followers: (json['followers'] as int?).toInt() ,
            following: (json['following'] as int?).toInt() ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            name: json['name'] as String? ,
            bio: json['bio'] as String? ,
            email: json['email'] as String? ,
            location: json['location'] as String? ,
            site_admin: (json['site_admin'] as bool) ,
            hireable: (json['hireable'] as bool?) ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            blog: json['blog'] as String? ,
            company: json['company'] as String? ,
            suspended_at: maybeParseDateTime(json['suspended_at'] as String?) ,
            user_view_type: json['user_view_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static User-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return User-search-result-item.fromJson(json);
    }

    final String  login;
    final int  id;
    final String  node_id;
    final String  avatar_url;
    final String  gravatar_id;
    final String  url;
    final String  html_url;
    final String  followers_url;
    final String  subscriptions_url;
    final String  organizations_url;
    final String  repos_url;
    final String  received_events_url;
    final String  type;
    final double  score;
    final String  following_url;
    final String  gists_url;
    final String  starred_url;
    final String  events_url;
    final  int? public_repos;
    final  int? public_gists;
    final  int? followers;
    final  int? following;
    final  DateTime? created_at;
    final  DateTime? updated_at;
    final  String? name;
    final  String? bio;
    final  String? email;
    final  String? location;
    final bool  site_admin;
    final  bool? hireable;
    final  List<Search-result-text-matchesInner>? text_matches;
    final  String? blog;
    final  String? company;
    final  DateTime? suspended_at;
    final  String? user_view_type;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'id': id,
            'node_id': node_id,
            'avatar_url': avatar_url,
            'gravatar_id': gravatar_id,
            'url': url,
            'html_url': html_url,
            'followers_url': followers_url,
            'subscriptions_url': subscriptions_url,
            'organizations_url': organizations_url,
            'repos_url': repos_url,
            'received_events_url': received_events_url,
            'type': type,
            'score': score,
            'following_url': following_url,
            'gists_url': gists_url,
            'starred_url': starred_url,
            'events_url': events_url,
            'public_repos': public_repos,
            'public_gists': public_gists,
            'followers': followers,
            'following': following,
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'name': name,
            'bio': bio,
            'email': email,
            'location': location,
            'site_admin': site_admin,
            'hireable': hireable,
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
            'blog': blog,
            'company': company,
            'suspended_at': suspended_at?.toIso8601String(),
            'user_view_type': user_view_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          login,
          id,
          node_id,
          avatar_url,
          gravatar_id,
          url,
          html_url,
          followers_url,
          subscriptions_url,
          organizations_url,
          repos_url,
          received_events_url,
          type,
          score,
          following_url,
          gists_url,
          starred_url,
          events_url,
          public_repos,
          public_gists,
          followers,
          following,
          created_at,
          updated_at,
          name,
          bio,
          email,
          location,
          site_admin,
          hireable,
          text_matches,
          blog,
          company,
          suspended_at,
          user_view_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is User-search-result-item
            && login == other.login
            && id == other.id
            && node_id == other.node_id
            && avatar_url == other.avatar_url
            && gravatar_id == other.gravatar_id
            && url == other.url
            && html_url == other.html_url
            && followers_url == other.followers_url
            && subscriptions_url == other.subscriptions_url
            && organizations_url == other.organizations_url
            && repos_url == other.repos_url
            && received_events_url == other.received_events_url
            && type == other.type
            && score == other.score
            && following_url == other.following_url
            && gists_url == other.gists_url
            && starred_url == other.starred_url
            && events_url == other.events_url
            && public_repos == other.public_repos
            && public_gists == other.public_gists
            && followers == other.followers
            && following == other.following
            && created_at == other.created_at
            && updated_at == other.updated_at
            && name == other.name
            && bio == other.bio
            && email == other.email
            && location == other.location
            && site_admin == other.site_admin
            && hireable == other.hireable
            && listsEqual(text_matches, other.text_matches)
            && blog == other.blog
            && company == other.company
            && suspended_at == other.suspended_at
            && user_view_type == other.user_view_type
        ;
    }
}
