import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-state-query.dart';
import 'package:github/model/code-scanning-alert-state-query.dart';
enum Code-scanning-alert-state-query {
    open._('open'),
    closed._('closed'),
    dismissed._('dismissed'),
    fixed._('fixed'),
    ;

    const Code-scanning-alert-state-query._(this.value);

    factory Code-scanning-alert-state-query.fromJson(String json) {
        return Code-scanning-alert-state-query.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-state-query value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-state-query? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-state-query.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
