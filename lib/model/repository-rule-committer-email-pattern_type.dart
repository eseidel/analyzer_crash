import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
enum Repository-rule-committer-email-patternType {
    committerEmailPattern._('committer_email_pattern'),
    ;

    const Repository-rule-committer-email-patternType._(this.value);

    factory Repository-rule-committer-email-patternType.fromJson(String json) {
        return Repository-rule-committer-email-patternType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-committer-email-patternType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-committer-email-patternType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-committer-email-patternType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
