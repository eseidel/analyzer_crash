import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-set-state.dart';
import 'package:github/model/code-scanning-alert-set-state.dart';
enum Code-scanning-alert-set-state {
    open._('open'),
    dismissed._('dismissed'),
    ;

    const Code-scanning-alert-set-state._(this.value);

    factory Code-scanning-alert-set-state.fromJson(String json) {
        return Code-scanning-alert-set-state.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-set-state value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-set-state? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-set-state.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
