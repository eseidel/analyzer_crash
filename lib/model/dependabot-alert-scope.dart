import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-scope.dart';
import 'package:github/model/dependabot-alert-scope.dart';
enum Dependabot-alert-scope {
    development._('development'),
    runtime._('runtime'),
    ;

    const Dependabot-alert-scope._(this.value);

    factory Dependabot-alert-scope.fromJson(String json) {
        return Dependabot-alert-scope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-scope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-scope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-scope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
