import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/team-discussion.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Team-discussion {
    Team-discussion(
        { required this.author,required this.body,required this.body_html,required this.body_version,required this.comments_count,required this.comments_url,required this.created_at,required this.last_edited_at,required this.html_url,required this.node_id,required this.number,required this.pinned,required this.private,required this.team_url,required this.title,required this.updated_at,required this.url, this.reactions,
         }
    );

    factory Team-discussion.fromJson(Map<String, dynamic>
        json) {
        return Team-discussion(
            author: Nullable-simple-user.fromJson(json['author'] as Map<String, dynamic>) ,
            body: json['body'] as String ,
            body_html: json['body_html'] as String ,
            body_version: json['body_version'] as String ,
            comments_count: (json['comments_count'] as int).toInt() ,
            comments_url: json['comments_url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            last_edited_at: DateTime.parse(json['last_edited_at'] as String),
            html_url: json['html_url'] as String ,
            node_id: json['node_id'] as String ,
            number: (json['number'] as int).toInt() ,
            pinned: (json['pinned'] as bool) ,
            private: (json['private'] as bool) ,
            team_url: json['team_url'] as String ,
            title: json['title'] as String ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            url: json['url'] as String ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-discussion? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-discussion.fromJson(json);
    }

    final Nullable-simple-user  author;
    final String  body;
    final String  body_html;
    final String  body_version;
    final int  comments_count;
    final String  comments_url;
    final DateTime  created_at;
    final DateTime  last_edited_at;
    final String  html_url;
    final String  node_id;
    final int  number;
    final bool  pinned;
    final bool  private;
    final String  team_url;
    final String  title;
    final DateTime  updated_at;
    final String  url;
    final  Reaction-rollup? reactions;


    Map<String, dynamic> toJson() {
        return {
            'author': author.toJson(),
            'body': body,
            'body_html': body_html,
            'body_version': body_version,
            'comments_count': comments_count,
            'comments_url': comments_url,
            'created_at': created_at.toIso8601String(),
            'last_edited_at': last_edited_at.toIso8601String(),
            'html_url': html_url,
            'node_id': node_id,
            'number': number,
            'pinned': pinned,
            'private': private,
            'team_url': team_url,
            'title': title,
            'updated_at': updated_at.toIso8601String(),
            'url': url,
            'reactions': reactions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          author,
          body,
          body_html,
          body_version,
          comments_count,
          comments_url,
          created_at,
          last_edited_at,
          html_url,
          node_id,
          number,
          pinned,
          private,
          team_url,
          title,
          updated_at,
          url,
          reactions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-discussion
            && author == other.author
            && body == other.body
            && body_html == other.body_html
            && body_version == other.body_version
            && comments_count == other.comments_count
            && comments_url == other.comments_url
            && created_at == other.created_at
            && last_edited_at == other.last_edited_at
            && html_url == other.html_url
            && node_id == other.node_id
            && number == other.number
            && pinned == other.pinned
            && private == other.private
            && team_url == other.team_url
            && title == other.title
            && updated_at == other.updated_at
            && url == other.url
            && reactions == other.reactions
        ;
    }
}
