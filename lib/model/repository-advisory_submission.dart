import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_submission.dart';
import 'package:github/model/repository-advisory_submission.dart';
@immutable
class Repository-advisorySubmission {
    Repository-advisorySubmission(
        { required this.accepted,
         }
    );

    factory Repository-advisorySubmission.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisorySubmission(
            accepted: (json['accepted'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisorySubmission? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisorySubmission.fromJson(json);
    }

    final bool  accepted;


    Map<String, dynamic> toJson() {
        return {
            'accepted': accepted,
        };
    }

    @override
    int get hashCode =>
          accepted.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-advisorySubmission
            && accepted == other.accepted
        ;
    }
}
