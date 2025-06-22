import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-comment_subject_type.dart';
import 'package:github/model/review-comment_subject_type.dart';
enum Review-commentSubjectType {
    line._('line'),
    file._('file'),
    ;

    const Review-commentSubjectType._(this.value);

    factory Review-commentSubjectType.fromJson(String json) {
        return Review-commentSubjectType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Review-commentSubjectType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-commentSubjectType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Review-commentSubjectType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
