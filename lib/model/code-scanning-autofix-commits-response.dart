import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-autofix-commits-response.dart';
import 'package:github/model/code-scanning-autofix-commits-response.dart';
@immutable
class Code-scanning-autofix-commits-response {
    Code-scanning-autofix-commits-response(
        {  this.target_ref, this.sha,
         }
    );

    factory Code-scanning-autofix-commits-response.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-autofix-commits-response(
            target_ref: json['target_ref'] as String? ,
            sha: json['sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-autofix-commits-response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-autofix-commits-response.fromJson(json);
    }

    final  String? target_ref;
    final  String? sha;


    Map<String, dynamic> toJson() {
        return {
            'target_ref': target_ref,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          target_ref,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-autofix-commits-response
            && target_ref == other.target_ref
            && sha == other.sha
        ;
    }
}
