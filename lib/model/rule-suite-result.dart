import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite-result.dart';
import 'package:github/model/rule-suite-result.dart';
enum Rule-suite-result {
    pass._('pass'),
    fail._('fail'),
    bypass._('bypass'),
    all._('all'),
    ;

    const Rule-suite-result._(this.value);

    factory Rule-suite-result.fromJson(String json) {
        return Rule-suite-result.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suite-result value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suite-result? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suite-result.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
