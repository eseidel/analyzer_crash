import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codeowners-errors.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
import 'package:github/model/codeowners-errors.dart';
import 'package:github/model/codeowners-errors_errors_inner.dart';
@immutable
class Codeowners-errors {
    Codeowners-errors(
        {  this.errors = const [],
         }
    );

    factory Codeowners-errors.fromJson(Map<String, dynamic>
        json) {
        return Codeowners-errors(
            errors: (json['errors'] as List).map<Codeowners-errorsErrorsInner>((e) => Codeowners-errorsErrorsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codeowners-errors? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codeowners-errors.fromJson(json);
    }

    final List<Codeowners-errorsErrorsInner>  errors;


    Map<String, dynamic> toJson() {
        return {
            'errors': errors.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          errors.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codeowners-errors
            && listsEqual(errors, other.errors)
        ;
    }
}
