import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-committed-event_author.dart';
import 'package:github/model/timeline-committed-event_author.dart';
@immutable
class Timeline-committed-eventAuthor {
    Timeline-committed-eventAuthor(
        { required this.date,required this.email,required this.name,
         }
    );

    factory Timeline-committed-eventAuthor.fromJson(Map<String, dynamic>
        json) {
        return Timeline-committed-eventAuthor(
            date: DateTime.parse(json['date'] as String),
            email: json['email'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-committed-eventAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-committed-eventAuthor.fromJson(json);
    }

    final DateTime  date;
    final String  email;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'date': date.toIso8601String(),
            'email': email,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          date,
          email,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-committed-eventAuthor
            && date == other.date
            && email == other.email
            && name == other.name
        ;
    }
}
