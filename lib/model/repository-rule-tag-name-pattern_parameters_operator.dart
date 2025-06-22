import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
enum Repository-rule-tag-name-patternParametersOperator {
    startsWith._('starts_with'),
    endsWith._('ends_with'),
    contains._('contains'),
    regex._('regex'),
    ;

    const Repository-rule-tag-name-patternParametersOperator._(this.value);

    factory Repository-rule-tag-name-patternParametersOperator.fromJson(String json) {
        return Repository-rule-tag-name-patternParametersOperator.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-tag-name-patternParametersOperator value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-tag-name-patternParametersOperator? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-tag-name-patternParametersOperator.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
