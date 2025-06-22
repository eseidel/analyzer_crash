import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-autofix-commits.dart';
import 'package:github/model/code-scanning-autofix-commits.dart';
@immutable
class Code-scanning-autofix-commits {
    Code-scanning-autofix-commits(
        {  this.target_ref, this.message,
         }
    );

    factory Code-scanning-autofix-commits.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-autofix-commits(
            target_ref: json['target_ref'] as String? ,
            message: json['message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-autofix-commits? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-autofix-commits.fromJson(json);
    }

    final  String? target_ref;
    final  String? message;


    Map<String, dynamic> toJson() {
        return {
            'target_ref': target_ref,
            'message': message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          target_ref,
          message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-autofix-commits
            && target_ref == other.target_ref
            && message == other.message
        ;
    }
}
