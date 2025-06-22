import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Nullable-milestone {
    Nullable-milestone(
        { required this.url,required this.html_url,required this.labels_url,required this.id,required this.node_id,required this.number, this.state = Nullable-milestoneState.open,required this.title,required this.description,required this.creator,required this.open_issues,required this.closed_issues,required this.created_at,required this.updated_at,required this.closed_at,required this.due_on,
         }
    );

    factory Nullable-milestone.fromJson(Map<String, dynamic>
        json) {
        return Nullable-milestone(
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            labels_url: json['labels_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            number: (json['number'] as int).toInt() ,
            state: Nullable-milestoneState.fromJson(json['state'] as String) ,
            title: json['title'] as String ,
            description: json['description'] as String ,
            creator: Nullable-simple-user.fromJson(json['creator'] as Map<String, dynamic>) ,
            open_issues: (json['open_issues'] as int).toInt() ,
            closed_issues: (json['closed_issues'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            closed_at: DateTime.parse(json['closed_at'] as String),
            due_on: DateTime.parse(json['due_on'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-milestone? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-milestone.fromJson(json);
    }

    final String  url;
    final String  html_url;
    final String  labels_url;
    final int  id;
    final String  node_id;
    final int  number;
    final Nullable-milestoneState  state;
    final String  title;
    final String  description;
    final Nullable-simple-user  creator;
    final int  open_issues;
    final int  closed_issues;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  closed_at;
    final DateTime  due_on;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'html_url': html_url,
            'labels_url': labels_url,
            'id': id,
            'node_id': node_id,
            'number': number,
            'state': state.toJson(),
            'title': title,
            'description': description,
            'creator': creator.toJson(),
            'open_issues': open_issues,
            'closed_issues': closed_issues,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'closed_at': closed_at.toIso8601String(),
            'due_on': due_on.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          html_url,
          labels_url,
          id,
          node_id,
          number,
          state,
          title,
          description,
          creator,
          open_issues,
          closed_issues,
          created_at,
          updated_at,
          closed_at,
          due_on,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-milestone
            && url == other.url
            && html_url == other.html_url
            && labels_url == other.labels_url
            && id == other.id
            && node_id == other.node_id
            && number == other.number
            && state == other.state
            && title == other.title
            && description == other.description
            && creator == other.creator
            && open_issues == other.open_issues
            && closed_issues == other.closed_issues
            && created_at == other.created_at
            && updated_at == other.updated_at
            && closed_at == other.closed_at
            && due_on == other.due_on
        ;
    }
}
