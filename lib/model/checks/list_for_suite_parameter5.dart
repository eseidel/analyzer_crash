import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/list_for_suite_parameter5.dart';
import 'package:github/model/checks/list_for_suite_parameter5.dart';
enum Checks&#x2F;listForSuiteParameter5 {
    latest._('latest'),
    all._('all'),
    ;

    const Checks&#x2F;listForSuiteParameter5._(this.value);

    factory Checks&#x2F;listForSuiteParameter5.fromJson(String json) {
        return Checks&#x2F;listForSuiteParameter5.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Checks&#x2F;listForSuiteParameter5 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;listForSuiteParameter5? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;listForSuiteParameter5.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
