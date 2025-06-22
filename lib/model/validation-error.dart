import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
@immutable
class Validation-error {
    Validation-error(
        { required this.message,required this.documentation_url, this.errors = const [],
         }
    );

    factory Validation-error.fromJson(Map<String, dynamic>
        json) {
        return Validation-error(
            message: json['message'] as String ,
            documentation_url: json['documentation_url'] as String ,
            errors: (json['errors'] as List?)?.map<Validation-errorErrorsInner>((e) => Validation-errorErrorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Validation-error? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Validation-error.fromJson(json);
    }

    final String  message;
    final String  documentation_url;
    final  List<Validation-errorErrorsInner>? errors;


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
        return other is Validation-error
            && message == other.message
            && documentation_url == other.documentation_url
            && listsEqual(errors, other.errors)
        ;
    }
}
