import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/update403_response.dart';
import 'package:github/model/projects/update403_response.dart';
@immutable
class Projects&#x2F;update403Response {
    Projects&#x2F;update403Response(
        {  this.message, this.documentation_url, this.errors = const [],
         }
    );

    factory Projects&#x2F;update403Response.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;update403Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
            errors: (json['errors'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;update403Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;update403Response.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;
    final  List<String>? errors;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
            'errors': errors,
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
        return other is Projects&#x2F;update403Response
            && message == other.message
            && documentation_url == other.documentation_url
            && listsEqual(errors, other.errors)
        ;
    }
}
