import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-merge-result.dart';
import 'package:github/model/pull-request-merge-result.dart';
@immutable
class Pull-request-merge-result {
    Pull-request-merge-result(
        { required this.sha,required this.merged,required this.message,
         }
    );

    factory Pull-request-merge-result.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-merge-result(
            sha: json['sha'] as String ,
            merged: (json['merged'] as bool) ,
            message: json['message'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-merge-result? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-merge-result.fromJson(json);
    }

    final String  sha;
    final bool  merged;
    final String  message;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'merged': merged,
            'message': message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          merged,
          message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-merge-result
            && sha == other.sha
            && merged == other.merged
            && message == other.message
        ;
    }
}
