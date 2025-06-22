import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
enum Code-scanning-default-setupRunnerType {
    standard._('standard'),
    labeled._('labeled'),
    ;

    const Code-scanning-default-setupRunnerType._(this.value);

    factory Code-scanning-default-setupRunnerType.fromJson(String json) {
        return Code-scanning-default-setupRunnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupRunnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupRunnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupRunnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
