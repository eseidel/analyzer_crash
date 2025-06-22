import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_state.dart';
import 'package:github/model/repository-advisory_state.dart';
enum Repository-advisoryState {
    published._('published'),
    closed._('closed'),
    withdrawn._('withdrawn'),
    draft._('draft'),
    triage._('triage'),
    ;

    const Repository-advisoryState._(this.value);

    factory Repository-advisoryState.fromJson(String json) {
        return Repository-advisoryState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisoryState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisoryState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisoryState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
