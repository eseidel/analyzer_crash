import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Base-gist {
    Base-gist(
        { required this.url,required this.forks_url,required this.commits_url,required this.id,required this.node_id,required this.git_pull_url,required this.git_push_url,required this.html_url,required this.files,required this.public,required this.created_at,required this.updated_at,required this.description,required this.comments, this.comments_enabled,required this.user,required this.comments_url, this.owner, this.truncated, this.forks = const [], this.history = const [],
         }
    );

    factory Base-gist.fromJson(Map<String, dynamic>
        json) {
        return Base-gist(
            url: json['url'] as String ,
            forks_url: json['forks_url'] as String ,
            commits_url: json['commits_url'] as String ,
            id: json['id'] as String ,
            node_id: json['node_id'] as String ,
            git_pull_url: json['git_pull_url'] as String ,
            git_push_url: json['git_push_url'] as String ,
            html_url: json['html_url'] as String ,
            files: json['files'].map((key, value) => MapEntry(key, Base-gistFiles.fromJson(value as Map<String, dynamic>) )).toMap(),
            public: (json['public'] as bool) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            description: json['description'] as String ,
            comments: (json['comments'] as int).toInt() ,
            comments_enabled: (json['comments_enabled'] as bool?) ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            comments_url: json['comments_url'] as String ,
            owner: Simple-user.maybeFromJson(json['owner'] as Map<String, dynamic>?) ,
            truncated: (json['truncated'] as bool?) ,
            forks: (json['forks'] as List?)?.cast<dynamic>() ,
            history: (json['history'] as List?)?.cast<dynamic>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Base-gist? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Base-gist.fromJson(json);
    }

    final String  url;
    final String  forks_url;
    final String  commits_url;
    final String  id;
    final String  node_id;
    final String  git_pull_url;
    final String  git_push_url;
    final String  html_url;
    final Map<String, Base-gistFiles>  files;
    final bool  public;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  description;
    final int  comments;
    final  bool? comments_enabled;
    final Nullable-simple-user  user;
    final String  comments_url;
    final  Simple-user? owner;
    final  bool? truncated;
    final  List<dynamic>? forks;
    final  List<dynamic>? history;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'forks_url': forks_url,
            'commits_url': commits_url,
            'id': id,
            'node_id': node_id,
            'git_pull_url': git_pull_url,
            'git_push_url': git_push_url,
            'html_url': html_url,
            'files': files.map((key, value) => MapEntry(key, value.toJson())).toMap(),
            'public': public,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'description': description,
            'comments': comments,
            'comments_enabled': comments_enabled,
            'user': user.toJson(),
            'comments_url': comments_url,
            'owner': owner?.toJson(),
            'truncated': truncated,
            'forks': forks?.map((e) => e.toJson()).toList(),
            'history': history?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          forks_url,
          commits_url,
          id,
          node_id,
          git_pull_url,
          git_push_url,
          html_url,
          files,
          public,
          created_at,
          updated_at,
          description,
          comments,
          comments_enabled,
          user,
          comments_url,
          owner,
          truncated,
          forks,
          history,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Base-gist
            && url == other.url
            && forks_url == other.forks_url
            && commits_url == other.commits_url
            && id == other.id
            && node_id == other.node_id
            && git_pull_url == other.git_pull_url
            && git_push_url == other.git_push_url
            && html_url == other.html_url
            && mapsEqual(files, other.files)
            && public == other.public
            && created_at == other.created_at
            && updated_at == other.updated_at
            && description == other.description
            && comments == other.comments
            && comments_enabled == other.comments_enabled
            && user == other.user
            && comments_url == other.comments_url
            && owner == other.owner
            && truncated == other.truncated
            && listsEqual(forks, other.forks)
            && listsEqual(history, other.history)
        ;
    }
}
