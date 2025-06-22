import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event-project-card.dart';
import 'package:github/model/issue-event-project-card.dart';
@immutable
class Issue-event-project-card {
    Issue-event-project-card(
        { required this.url,required this.id,required this.project_url,required this.project_id,required this.column_name, this.previous_column_name,
         }
    );

    factory Issue-event-project-card.fromJson(Map<String, dynamic>
        json) {
        return Issue-event-project-card(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            project_url: json['project_url'] as String ,
            project_id: (json['project_id'] as int).toInt() ,
            column_name: json['column_name'] as String ,
            previous_column_name: json['previous_column_name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event-project-card? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event-project-card.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  project_url;
    final int  project_id;
    final String  column_name;
    final  String? previous_column_name;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'project_url': project_url,
            'project_id': project_id,
            'column_name': column_name,
            'previous_column_name': previous_column_name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          project_url,
          project_id,
          column_name,
          previous_column_name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-event-project-card
            && url == other.url
            && id == other.id
            && project_url == other.project_url
            && project_id == other.project_id
            && column_name == other.column_name
            && previous_column_name == other.previous_column_name
        ;
    }
}
