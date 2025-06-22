import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
enum Repository-rule-commit-author-email-patternType {
    commitAuthorEmailPattern._('commit_author_email_pattern'),
    ;

    const Repository-rule-commit-author-email-patternType._(this.value);

    factory Repository-rule-commit-author-email-patternType.fromJson(String json) {
        return Repository-rule-commit-author-email-patternType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-commit-author-email-patternType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-commit-author-email-patternType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-commit-author-email-patternType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
