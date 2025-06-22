import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
enum Repository-rule-non-fast-forwardType {
    nonFastForward._('non_fast_forward'),
    ;

    const Repository-rule-non-fast-forwardType._(this.value);

    factory Repository-rule-non-fast-forwardType.fromJson(String json) {
        return Repository-rule-non-fast-forwardType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-non-fast-forwardType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-non-fast-forwardType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-non-fast-forwardType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
