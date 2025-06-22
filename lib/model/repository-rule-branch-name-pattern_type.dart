import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
enum Repository-rule-branch-name-patternType {
    branchNamePattern._('branch_name_pattern'),
    ;

    const Repository-rule-branch-name-patternType._(this.value);

    factory Repository-rule-branch-name-patternType.fromJson(String json) {
        return Repository-rule-branch-name-patternType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-branch-name-patternType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-branch-name-patternType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-branch-name-patternType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
