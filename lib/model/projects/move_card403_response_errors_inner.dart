import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/move_card403_response_errors_inner.dart';
import 'package:github/model/projects/move_card403_response_errors_inner.dart';
@immutable
class Projects&#x2F;moveCard403ResponseErrorsInner {
    Projects&#x2F;moveCard403ResponseErrorsInner(
        {  this.code, this.message, this.resource, this.field,
         }
    );

    factory Projects&#x2F;moveCard403ResponseErrorsInner.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;moveCard403ResponseErrorsInner(
            code: json['code'] as String? ,
            message: json['message'] as String? ,
            resource: json['resource'] as String? ,
            field: json['field'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;moveCard403ResponseErrorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;moveCard403ResponseErrorsInner.fromJson(json);
    }

    final  String? code;
    final  String? message;
    final  String? resource;
    final  String? field;


    Map<String, dynamic> toJson() {
        return {
            'code': code,
            'message': message,
            'resource': resource,
            'field': field,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          code,
          message,
          resource,
          field,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;moveCard403ResponseErrorsInner
            && code == other.code
            && message == other.message
            && resource == other.resource
            && field == other.field
        ;
    }
}
