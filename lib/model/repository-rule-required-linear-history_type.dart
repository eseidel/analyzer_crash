import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
enum Repository-rule-required-linear-historyType {
    requiredLinearHistory._('required_linear_history'),
    ;

    const Repository-rule-required-linear-historyType._(this.value);

    factory Repository-rule-required-linear-historyType.fromJson(String json) {
        return Repository-rule-required-linear-historyType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-required-linear-historyType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-linear-historyType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-linear-historyType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
