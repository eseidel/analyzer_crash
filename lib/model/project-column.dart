import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/project-column.dart';
@immutable
class Project-column {
    Project-column(
        { required this.url,required this.project_url,required this.cards_url,required this.id,required this.node_id,required this.name,required this.created_at,required this.updated_at,
         }
    );

    factory Project-column.fromJson(Map<String, dynamic>
        json) {
        return Project-column(
            url: json['url'] as String ,
            project_url: json['project_url'] as String ,
            cards_url: json['cards_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Project-column? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Project-column.fromJson(json);
    }

    final String  url;
    final String  project_url;
    final String  cards_url;
    final int  id;
    final String  node_id;
    final String  name;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'project_url': project_url,
            'cards_url': cards_url,
            'id': id,
            'node_id': node_id,
            'name': name,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          project_url,
          cards_url,
          id,
          node_id,
          name,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Project-column
            && url == other.url
            && project_url == other.project_url
            && cards_url == other.cards_url
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
