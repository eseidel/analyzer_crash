import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-update_query_suite.dart';
import 'package:github/model/code-scanning-default-setup-update_query_suite.dart';
enum Code-scanning-default-setup-updateQuerySuite {
    default._('default'),
    extended._('extended'),
    ;

    const Code-scanning-default-setup-updateQuerySuite._(this.value);

    factory Code-scanning-default-setup-updateQuerySuite.fromJson(String json) {
        return Code-scanning-default-setup-updateQuerySuite.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setup-updateQuerySuite value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-updateQuerySuite? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-updateQuerySuite.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
