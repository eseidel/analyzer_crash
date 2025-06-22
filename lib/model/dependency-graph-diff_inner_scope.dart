import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
enum Dependency-graph-diffInnerScope {
    unknown._('unknown'),
    runtime._('runtime'),
    development._('development'),
    ;

    const Dependency-graph-diffInnerScope._(this.value);

    factory Dependency-graph-diffInnerScope.fromJson(String json) {
        return Dependency-graph-diffInnerScope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependency-graph-diffInnerScope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-diffInnerScope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-diffInnerScope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
