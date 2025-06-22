import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
enum Code-scanning-default-setup-optionsRunnerType {
    standard._('standard'),
    labeled._('labeled'),
    notSet._('not_set'),
    ;

    const Code-scanning-default-setup-optionsRunnerType._(this.value);

    factory Code-scanning-default-setup-optionsRunnerType.fromJson(String json) {
        return Code-scanning-default-setup-optionsRunnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setup-optionsRunnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-optionsRunnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-optionsRunnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
