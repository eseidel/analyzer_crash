import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event-label.dart';
import 'package:github/model/issue-event-label.dart';
@immutable
class Issue-event-label {
    Issue-event-label(
        { required this.name,required this.color,
         }
    );

    factory Issue-event-label.fromJson(Map<String, dynamic>
        json) {
        return Issue-event-label(
            name: json['name'] as String ,
            color: json['color'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event-label? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event-label.fromJson(json);
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
        return other is Issue-event-label
            && name == other.name
            && color == other.color
        ;
    }
}
