import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Project-card {
    Project-card(
        { required this.url,required this.id,required this.node_id,required this.note,required this.creator,required this.created_at,required this.updated_at, this.archived, this.column_name, this.project_id,required this.column_url, this.content_url,required this.project_url,
         }
    );

    factory Project-card.fromJson(Map<String, dynamic>
        json) {
        return Project-card(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            note: json['note'] as String ,
            creator: Nullable-simple-user.fromJson(json['creator'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            archived: (json['archived'] as bool?) ,
            column_name: json['column_name'] as String? ,
            project_id: json['project_id'] as String? ,
            column_url: json['column_url'] as String ,
            content_url: json['content_url'] as String? ,
            project_url: json['project_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Project-card? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Project-card.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  node_id;
    final String  note;
    final Nullable-simple-user  creator;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  bool? archived;
    final  String? column_name;
    final  String? project_id;
    final String  column_url;
    final  String? content_url;
    final String  project_url;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'node_id': node_id,
            'note': note,
            'creator': creator.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'archived': archived,
            'column_name': column_name,
            'project_id': project_id,
            'column_url': column_url,
            'content_url': content_url,
            'project_url': project_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          node_id,
          note,
          creator,
          created_at,
          updated_at,
          archived,
          column_name,
          project_id,
          column_url,
          content_url,
          project_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Project-card
            && url == other.url
            && id == other.id
            && node_id == other.node_id
            && note == other.note
            && creator == other.creator
            && created_at == other.created_at
            && updated_at == other.updated_at
            && archived == other.archived
            && column_name == other.column_name
            && project_id == other.project_id
            && column_url == other.column_url
            && content_url == other.content_url
            && project_url == other.project_url
        ;
    }
}
