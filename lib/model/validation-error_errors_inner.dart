import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
@immutable
class Validation-errorErrorsInner {
    Validation-errorErrorsInner(
        {  this.resource, this.field, this.message,required this.code, this.index, this.value,
         }
    );

    factory Validation-errorErrorsInner.fromJson(Map<String, dynamic>
        json) {
        return Validation-errorErrorsInner(
            resource: json['resource'] as String? ,
            field: json['field'] as String? ,
            message: json['message'] as String? ,
            code: json['code'] as String ,
            index: (json['index'] as int?).toInt() ,
            value: Validation-errorErrorsInnerValue.maybeFromJson(json['value'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Validation-errorErrorsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Validation-errorErrorsInner.fromJson(json);
    }

    final  String? resource;
    final  String? field;
    final  String? message;
    final String  code;
    final  int? index;
    final  Validation-errorErrorsInnerValue? value;


    Map<String, dynamic> toJson() {
        return {
            'resource': resource,
            'field': field,
            'message': message,
            'code': code,
            'index': index,
            'value': value?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          resource,
          field,
          message,
          code,
          index,
          value,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Validation-errorErrorsInner
            && resource == other.resource
            && field == other.field
            && message == other.message
            && code == other.code
            && index == other.index
            && value == other.value
        ;
    }
}
