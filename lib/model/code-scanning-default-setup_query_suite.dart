import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
enum Code-scanning-default-setupQuerySuite {
    default._('default'),
    extended._('extended'),
    ;

    const Code-scanning-default-setupQuerySuite._(this.value);

    factory Code-scanning-default-setupQuerySuite.fromJson(String json) {
        return Code-scanning-default-setupQuerySuite.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupQuerySuite value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupQuerySuite? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupQuerySuite.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
