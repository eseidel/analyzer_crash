import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/demilestoned-issue-event_milestone.dart';
import 'package:github/model/demilestoned-issue-event_milestone.dart';
@immutable
class Demilestoned-issue-eventMilestone {
    Demilestoned-issue-eventMilestone(
        { required this.title,
         }
    );

    factory Demilestoned-issue-eventMilestone.fromJson(Map<String, dynamic>
        json) {
        return Demilestoned-issue-eventMilestone(
            title: json['title'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Demilestoned-issue-eventMilestone? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Demilestoned-issue-eventMilestone.fromJson(json);
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
        return other is Demilestoned-issue-eventMilestone
            && title == other.title
        ;
    }
}
