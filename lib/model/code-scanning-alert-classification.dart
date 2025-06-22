import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
enum Code-scanning-alert-classification {
    source._('source'),
    generated._('generated'),
    test._('test'),
    library._('library'),
    ;

    const Code-scanning-alert-classification._(this.value);

    factory Code-scanning-alert-classification.fromJson(String json) {
        return Code-scanning-alert-classification.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-classification value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-classification? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-classification.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
