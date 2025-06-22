import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
enum Pull-request-review-commentSubjectType {
    line._('line'),
    file._('file'),
    ;

    const Pull-request-review-commentSubjectType._(this.value);

    factory Pull-request-review-commentSubjectType.fromJson(String json) {
        return Pull-request-review-commentSubjectType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pull-request-review-commentSubjectType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-commentSubjectType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-commentSubjectType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
