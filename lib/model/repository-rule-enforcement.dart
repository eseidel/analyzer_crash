import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-enforcement.dart';
import 'package:github/model/repository-rule-enforcement.dart';
enum Repository-rule-enforcement {
    disabled._('disabled'),
    active._('active'),
    evaluate._('evaluate'),
    ;

    const Repository-rule-enforcement._(this.value);

    factory Repository-rule-enforcement.fromJson(String json) {
        return Repository-rule-enforcement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-enforcement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-enforcement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-enforcement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
