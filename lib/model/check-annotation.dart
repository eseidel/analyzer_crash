import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-annotation.dart';
import 'package:github/model/check-annotation.dart';
@immutable
class Check-annotation {
    Check-annotation(
        { required this.path,required this.start_line,required this.end_line,required this.start_column,required this.end_column,required this.annotation_level,required this.title,required this.message,required this.raw_details,required this.blob_href,
         }
    );

    factory Check-annotation.fromJson(Map<String, dynamic>
        json) {
        return Check-annotation(
            path: json['path'] as String ,
            start_line: (json['start_line'] as int).toInt() ,
            end_line: (json['end_line'] as int).toInt() ,
            start_column: (json['start_column'] as int).toInt() ,
            end_column: (json['end_column'] as int).toInt() ,
            annotation_level: json['annotation_level'] as String ,
            title: json['title'] as String ,
            message: json['message'] as String ,
            raw_details: json['raw_details'] as String ,
            blob_href: json['blob_href'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-annotation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-annotation.fromJson(json);
    }

    final String  path;
    final int  start_line;
    final int  end_line;
    final int  start_column;
    final int  end_column;
    final String  annotation_level;
    final String  title;
    final String  message;
    final String  raw_details;
    final String  blob_href;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'start_line': start_line,
            'end_line': end_line,
            'start_column': start_column,
            'end_column': end_column,
            'annotation_level': annotation_level,
            'title': title,
            'message': message,
            'raw_details': raw_details,
            'blob_href': blob_href,
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
          annotation_level,
          title,
          message,
          raw_details,
          blob_href,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-annotation
            && path == other.path
            && start_line == other.start_line
            && end_line == other.end_line
            && start_column == other.start_column
            && end_column == other.end_column
            && annotation_level == other.annotation_level
            && title == other.title
            && message == other.message
            && raw_details == other.raw_details
            && blob_href == other.blob_href
        ;
    }
}
