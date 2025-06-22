import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/unlabeled-issue-event_label.dart';
import 'package:github/model/unlabeled-issue-event_label.dart';
@immutable
class Unlabeled-issue-eventLabel {
    Unlabeled-issue-eventLabel(
        { required this.name,required this.color,
         }
    );

    factory Unlabeled-issue-eventLabel.fromJson(Map<String, dynamic>
        json) {
        return Unlabeled-issue-eventLabel(
            name: json['name'] as String ,
            color: json['color'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Unlabeled-issue-eventLabel? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Unlabeled-issue-eventLabel.fromJson(json);
    }

    final String  name;
    final String  color;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'color': color,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          color,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Unlabeled-issue-eventLabel
            && name == other.name
            && color == other.color
        ;
    }
}
