import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/labeled-issue-event_label.dart';
import 'package:github/model/labeled-issue-event_label.dart';
@immutable
class Labeled-issue-eventLabel {
    Labeled-issue-eventLabel(
        { required this.name,required this.color,
         }
    );

    factory Labeled-issue-eventLabel.fromJson(Map<String, dynamic>
        json) {
        return Labeled-issue-eventLabel(
            name: json['name'] as String ,
            color: json['color'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Labeled-issue-eventLabel? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Labeled-issue-eventLabel.fromJson(json);
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
        return other is Labeled-issue-eventLabel
            && name == other.name
            && color == other.color
        ;
    }
}
