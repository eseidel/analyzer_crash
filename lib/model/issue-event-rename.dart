import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event-rename.dart';
import 'package:github/model/issue-event-rename.dart';
@immutable
class Issue-event-rename {
    Issue-event-rename(
        { required this.from,required this.to,
         }
    );

    factory Issue-event-rename.fromJson(Map<String, dynamic>
        json) {
        return Issue-event-rename(
            from: json['from'] as String ,
            to: json['to'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event-rename? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event-rename.fromJson(json);
    }

    final String  from;
    final String  to;


    Map<String, dynamic> toJson() {
        return {
            'from': from,
            'to': to,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          from,
          to,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-event-rename
            && from == other.from
            && to == other.to
        ;
    }
}
