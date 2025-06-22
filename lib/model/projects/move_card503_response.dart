import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/move_card503_response.dart';
import 'package:github/model/projects/move_card503_response_errors_inner.dart';
import 'package:github/model/projects/move_card503_response.dart';
import 'package:github/model/projects/move_card503_response_errors_inner.dart';
@immutable
class Projects&#x2F;moveCard503Response {
    Projects&#x2F;moveCard503Response(
        {  this.code, this.message, this.documentation_url, this.errors = const [],
         }
    );

    factory Projects&#x2F;moveCard503Response.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;moveCard503Response(
            code: json['code'] as String? ,
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
            errors: (json['errors'] as List?)?.map<Projects/moveCard503ResponseErrorsInner>((e) => Projects/moveCard503ResponseErrorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;moveCard503Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;moveCard503Response.fromJson(json);
    }

    final  String? code;
    final  String? message;
    final  String? documentation_url;
    final  List<Projects/moveCard503ResponseErrorsInner>? errors;


    Map<String, dynamic> toJson() {
        return {
            'code': code,
            'message': message,
            'documentation_url': documentation_url,
            'errors': errors?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          code,
          message,
          documentation_url,
          errors,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;moveCard503Response
            && code == other.code
            && message == other.message
            && documentation_url == other.documentation_url
            && listsEqual(errors, other.errors)
        ;
    }
}
