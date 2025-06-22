import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-state.dart';
enum Campaign-state {
    open._('open'),
    closed._('closed'),
    ;

    const Campaign-state._(this.value);

    factory Campaign-state.fromJson(String json) {
        return Campaign-state.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Campaign-state value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaign-state? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Campaign-state.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
