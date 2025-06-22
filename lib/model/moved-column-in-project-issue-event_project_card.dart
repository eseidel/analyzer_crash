import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/moved-column-in-project-issue-event_project_card.dart';
import 'package:github/model/moved-column-in-project-issue-event_project_card.dart';
@immutable
class Moved-column-in-project-issue-eventProjectCard {
    Moved-column-in-project-issue-eventProjectCard(
        { required this.id,required this.url,required this.project_id,required this.project_url,required this.column_name, this.previous_column_name,
         }
    );

    factory Moved-column-in-project-issue-eventProjectCard.fromJson(Map<String, dynamic>
        json) {
        return Moved-column-in-project-issue-eventProjectCard(
            id: (json['id'] as int).toInt() ,
            url: json['url'] as String ,
            project_id: (json['project_id'] as int).toInt() ,
            project_url: json['project_url'] as String ,
            column_name: json['column_name'] as String ,
            previous_column_name: json['previous_column_name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Moved-column-in-project-issue-eventProjectCard? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Moved-column-in-project-issue-eventProjectCard.fromJson(json);
    }

    final int  id;
    final String  url;
    final int  project_id;
    final String  project_url;
    final String  column_name;
    final  String? previous_column_name;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'url': url,
            'project_id': project_id,
            'project_url': project_url,
            'column_name': column_name,
            'previous_column_name': previous_column_name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
          project_id,
          project_url,
          column_name,
          previous_column_name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Moved-column-in-project-issue-eventProjectCard
            && id == other.id
            && url == other.url
            && project_id == other.project_id
            && project_url == other.project_url
            && column_name == other.column_name
            && previous_column_name == other.previous_column_name
        ;
    }
}
