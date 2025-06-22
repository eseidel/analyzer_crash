import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/renamed-issue-event_rename.dart';
import 'package:github/model/renamed-issue-event_rename.dart';
@immutable
class Renamed-issue-eventRename {
    Renamed-issue-eventRename(
        { required this.from,required this.to,
         }
    );

    factory Renamed-issue-eventRename.fromJson(Map<String, dynamic>
        json) {
        return Renamed-issue-eventRename(
            from: json['from'] as String ,
            to: json['to'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Renamed-issue-eventRename? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Renamed-issue-eventRename.fromJson(json);
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
        return other is Renamed-issue-eventRename
            && from == other.from
            && to == other.to
        ;
    }
}
