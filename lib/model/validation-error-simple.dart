import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/validation-error-simple.dart';
@immutable
class Validation-error-simple {
    Validation-error-simple(
        { required this.message,required this.documentation_url, this.errors = const [],
         }
    );

    factory Validation-error-simple.fromJson(Map<String, dynamic>
        json) {
        return Validation-error-simple(
            message: json['message'] as String ,
            documentation_url: json['documentation_url'] as String ,
            errors: (json['errors'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Validation-error-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Validation-error-simple.fromJson(json);
    }

    final String  message;
    final String  documentation_url;
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
        return other is Validation-error-simple
            && message == other.message
            && documentation_url == other.documentation_url
            && listsEqual(errors, other.errors)
        ;
    }
}
