import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-update_state.dart';
import 'package:github/model/repository-advisory-update_state.dart';
enum Repository-advisory-updateState {
    published._('published'),
    closed._('closed'),
    draft._('draft'),
    ;

    const Repository-advisory-updateState._(this.value);

    factory Repository-advisory-updateState.fromJson(String json) {
        return Repository-advisory-updateState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisory-updateState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-updateState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-updateState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
