import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
enum Dependency-graph-diffInnerChangeType {
    added._('added'),
    removed._('removed'),
    ;

    const Dependency-graph-diffInnerChangeType._(this.value);

    factory Dependency-graph-diffInnerChangeType.fromJson(String json) {
        return Dependency-graph-diffInnerChangeType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependency-graph-diffInnerChangeType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-diffInnerChangeType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-diffInnerChangeType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
