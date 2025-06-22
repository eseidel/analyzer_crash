import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/move_card403_response.dart';
import 'package:github/model/projects/move_card403_response_errors_inner.dart';
import 'package:github/model/projects/move_card403_response.dart';
import 'package:github/model/projects/move_card403_response_errors_inner.dart';
@immutable
class Projects&#x2F;moveCard403Response {
    Projects&#x2F;moveCard403Response(
        {  this.message, this.documentation_url, this.errors = const [],
         }
    );

    factory Projects&#x2F;moveCard403Response.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;moveCard403Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
            errors: (json['errors'] as List?)?.map<Projects/moveCard403ResponseErrorsInner>((e) => Projects/moveCard403ResponseErrorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;moveCard403Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;moveCard403Response.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;
    final  List<Projects/moveCard403ResponseErrorsInner>? errors;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
            'errors': errors?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
          errors,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;moveCard403Response
            && message == other.message
            && documentation_url == other.documentation_url
            && listsEqual(errors, other.errors)
        ;
    }
}
