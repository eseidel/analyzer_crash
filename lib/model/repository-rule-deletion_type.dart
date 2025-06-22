import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
enum Repository-rule-deletionType {
    deletion._('deletion'),
    ;

    const Repository-rule-deletionType._(this.value);

    factory Repository-rule-deletionType.fromJson(String json) {
        return Repository-rule-deletionType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-deletionType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-deletionType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-deletionType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
