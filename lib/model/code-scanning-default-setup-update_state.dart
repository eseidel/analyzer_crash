import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-update_state.dart';
import 'package:github/model/code-scanning-default-setup-update_state.dart';
enum Code-scanning-default-setup-updateState {
    configured._('configured'),
    not-configured._('not-configured'),
    ;

    const Code-scanning-default-setup-updateState._(this.value);

    factory Code-scanning-default-setup-updateState.fromJson(String json) {
        return Code-scanning-default-setup-updateState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setup-updateState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-updateState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-updateState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
