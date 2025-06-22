import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
enum Repository-rule-tag-name-patternType {
    tagNamePattern._('tag_name_pattern'),
    ;

    const Repository-rule-tag-name-patternType._(this.value);

    factory Repository-rule-tag-name-patternType.fromJson(String json) {
        return Repository-rule-tag-name-patternType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-tag-name-patternType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-tag-name-patternType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-tag-name-patternType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
