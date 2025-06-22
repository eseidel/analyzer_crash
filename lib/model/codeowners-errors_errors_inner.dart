import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
@immutable
class Codeowners-errorsErrorsInner {
    Codeowners-errorsErrorsInner(
        { required this.line,required this.column, this.source,required this.kind, this.suggestion,required this.message,required this.path,
         }
    );

    factory Codeowners-errorsErrorsInner.fromJson(Map<String, dynamic>
        json) {
        return Codeowners-errorsErrorsInner(
            line: (json['line'] as int).toInt() ,
            column: (json['column'] as int).toInt() ,
            source: json['source'] as String? ,
            kind: json['kind'] as String ,
            suggestion: json['suggestion'] as String? ,
            message: json['message'] as String ,
            path: json['path'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codeowners-errorsErrorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codeowners-errorsErrorsInner.fromJson(json);
    }

    final int  line;
    final int  column;
    final  String? source;
    final String  kind;
    final  String? suggestion;
    final String  message;
    final String  path;


    Map<String, dynamic> toJson() {
        return {
            'line': line,
            'column': column,
            'source': source,
            'kind': kind,
            'suggestion': suggestion,
            'message': message,
            'path': path,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          line,
          column,
          source,
          kind,
          suggestion,
          message,
          path,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codeowners-errorsErrorsInner
            && line == other.line
            && column == other.column
            && source == other.source
            && kind == other.kind
            && suggestion == other.suggestion
            && message == other.message
            && path == other.path
        ;
    }
}
