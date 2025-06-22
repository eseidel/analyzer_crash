import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
enum Secret-scanning-alert-state {
    open._('open'),
    resolved._('resolved'),
    ;

    const Secret-scanning-alert-state._(this.value);

    factory Secret-scanning-alert-state.fromJson(String json) {
        return Secret-scanning-alert-state.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-alert-state value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-alert-state? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-alert-state.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
