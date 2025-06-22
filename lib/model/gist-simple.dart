import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Gist-simple {
    Gist-simple(
        {  this.forks = const [], this.history = const [], this.fork_of, this.url, this.forks_url, this.commits_url, this.id, this.node_id, this.git_pull_url, this.git_push_url, this.html_url, this.files, this.public, this.created_at, this.updated_at, this.description, this.comments, this.comments_enabled, this.user, this.comments_url, this.owner, this.truncated,
         }
    );

    factory Gist-simple.fromJson(Map<String, dynamic>
        json) {
        return Gist-simple(
            forks: (json['forks'] as List?)?.map<Gist-simpleForksInner>((e) => Gist-simpleForksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            history: (json['history'] as List?)?.map<Gist-history>((e) => Gist-history.fromJson(e as Map<String, dynamic>) ).toList() ,
            fork_of: Gist-simpleForkOf.maybeFromJson(json['fork_of'] as Map<String, dynamic>?) ,
            url: json['url'] as String? ,
            forks_url: json['forks_url'] as String? ,
            commits_url: json['commits_url'] as String? ,
            id: json['id'] as String? ,
            node_id: json['node_id'] as String? ,
            git_pull_url: json['git_pull_url'] as String? ,
            git_push_url: json['git_push_url'] as String? ,
            html_url: json['html_url'] as String? ,
            files: json['files'].map((key, value) => MapEntry(key, Gist-simpleFiles.fromJson(value as Map<String, dynamic>) )).toMap(),
            public: (json['public'] as bool?) ,
            created_at: json['created_at'] as String? ,
            updated_at: json['updated_at'] as String? ,
            description: json['description'] as String? ,
            comments: (json['comments'] as int?).toInt() ,
            comments_enabled: (json['comments_enabled'] as bool?) ,
            user: json['user'] as String? ,
            comments_url: json['comments_url'] as String? ,
            owner: Simple-user.maybeFromJson(json['owner'] as Map<String, dynamic>?) ,
            truncated: (json['truncated'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-simple.fromJson(json);
    }

    final  List<Gist-simpleForksInner>? forks;
    final  List<Gist-history>? history;
    final  Gist-simpleForkOf? fork_of;
    final  String? url;
    final  String? forks_url;
    final  String? commits_url;
    final  String? id;
    final  String? node_id;
    final  String? git_pull_url;
    final  String? git_push_url;
    final  String? html_url;
    final  Map<String, Gist-simpleFiles>? files;
    final  bool? public;
    final  String? created_at;
    final  String? updated_at;
    final  String? description;
    final  int? comments;
    final  bool? comments_enabled;
    final  String? user;
    final  String? comments_url;
    final  Simple-user? owner;
    final  bool? truncated;


    Map<String, dynamic> toJson() {
        return {
            'forks': forks?.map((e) => e.toJson()).toList(),
            'history': history?.map((e) => e.toJson()).toList(),
            'fork_of': fork_of?.toJson(),
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
            'created_at': created_at,
            'updated_at': updated_at,
            'description': description,
            'comments': comments,
            'comments_enabled': comments_enabled,
            'user': user,
            'comments_url': comments_url,
            'owner': owner?.toJson(),
            'truncated': truncated,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          forks,
          history,
          fork_of,
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
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-simple
            && listsEqual(forks, other.forks)
            && listsEqual(history, other.history)
            && fork_of == other.fork_of
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
        ;
    }
}
