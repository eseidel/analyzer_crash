import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-update_type.dart';
import 'package:github/model/repository-rule-update_type.dart';
enum Repository-rule-updateType {
    update._('update'),
    ;

    const Repository-rule-updateType._(this.value);

    factory Repository-rule-updateType.fromJson(String json) {
        return Repository-rule-updateType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-updateType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-updateType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-updateType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
