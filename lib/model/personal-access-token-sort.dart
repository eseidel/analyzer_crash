import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/personal-access-token-sort.dart';
import 'package:github/model/personal-access-token-sort.dart';
enum Personal-access-token-sort {
    createdAt._('created_at'),
    ;

    const Personal-access-token-sort._(this.value);

    factory Personal-access-token-sort.fromJson(String json) {
        return Personal-access-token-sort.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Personal-access-token-sort value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Personal-access-token-sort? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Personal-access-token-sort.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
