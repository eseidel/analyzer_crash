import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-creation_type.dart';
enum Repository-rule-creationType {
    creation._('creation'),
    ;

    const Repository-rule-creationType._(this.value);

    factory Repository-rule-creationType.fromJson(String json) {
        return Repository-rule-creationType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-creationType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-creationType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-creationType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
