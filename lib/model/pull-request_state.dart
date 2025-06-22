import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/pull-request_state.dart';
enum Pull-requestState {
    open._('open'),
    closed._('closed'),
    ;

    const Pull-requestState._(this.value);

    factory Pull-requestState.fromJson(String json) {
        return Pull-requestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pull-requestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-requestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pull-requestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
