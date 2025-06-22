import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
enum Code-scanning-default-setupState {
    configured._('configured'),
    not-configured._('not-configured'),
    ;

    const Code-scanning-default-setupState._(this.value);

    factory Code-scanning-default-setupState.fromJson(String json) {
        return Code-scanning-default-setupState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
