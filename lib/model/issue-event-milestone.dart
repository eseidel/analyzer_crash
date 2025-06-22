import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event-milestone.dart';
import 'package:github/model/issue-event-milestone.dart';
@immutable
class Issue-event-milestone {
    Issue-event-milestone(
        { required this.title,
         }
    );

    factory Issue-event-milestone.fromJson(Map<String, dynamic>
        json) {
        return Issue-event-milestone(
            title: json['title'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event-milestone? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event-milestone.fromJson(json);
    }

    final String  title;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
        };
    }

    @override
    int get hashCode =>
          title.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-event-milestone
            && title == other.title
        ;
    }
}
