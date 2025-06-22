import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/create_card503_response_errors_inner.dart';
import 'package:github/model/projects/create_card503_response_errors_inner.dart';
@immutable
class Projects&#x2F;createCard503ResponseErrorsInner {
    Projects&#x2F;createCard503ResponseErrorsInner(
        {  this.code, this.message,
         }
    );

    factory Projects&#x2F;createCard503ResponseErrorsInner.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;createCard503ResponseErrorsInner(
            code: json['code'] as String? ,
            message: json['message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;createCard503ResponseErrorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;createCard503ResponseErrorsInner.fromJson(json);
    }

    final  String? code;
    final  String? message;


    Map<String, dynamic> toJson() {
        return {
            'code': code,
            'message': message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          code,
          message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;createCard503ResponseErrorsInner
            && code == other.code
            && message == other.message
        ;
    }
}
