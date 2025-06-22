import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-location.dart';
@immutable
class Code-scanning-alert-location {
    Code-scanning-alert-location(
        {  this.path, this.start_line, this.end_line, this.start_column, this.end_column,
         }
    );

    factory Code-scanning-alert-location.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-alert-location(
            path: json['path'] as String? ,
            start_line: (json['start_line'] as int?).toInt() ,
            end_line: (json['end_line'] as int?).toInt() ,
            start_column: (json['start_column'] as int?).toInt() ,
            end_column: (json['end_column'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-location? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-location.fromJson(json);
    }

    final  String? path;
    final  int? start_line;
    final  int? end_line;
    final  int? start_column;
    final  int? end_column;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'start_line': start_line,
            'end_line': end_line,
            'start_column': start_column,
            'end_column': end_column,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          start_line,
          end_line,
          start_column,
          end_column,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-alert-location
            && path == other.path
            && start_line == other.start_line
            && end_line == other.end_line
            && start_column == other.start_column
            && end_column == other.end_column
        ;
    }
}
