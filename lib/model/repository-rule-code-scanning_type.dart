import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
import 'package:github/model/repository-rule-code-scanning_type.dart';
enum Repository-rule-code-scanningType {
    codeScanning._('code_scanning'),
    ;

    const Repository-rule-code-scanningType._(this.value);

    factory Repository-rule-code-scanningType.fromJson(String json) {
        return Repository-rule-code-scanningType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-code-scanningType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-code-scanningType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-code-scanningType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
