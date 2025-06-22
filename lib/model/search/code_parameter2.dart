import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/code_parameter2.dart';
import 'package:github/model/search/code_parameter2.dart';
enum Search&#x2F;codeParameter2 {
    desc._('desc'),
    asc._('asc'),
    ;

    const Search&#x2F;codeParameter2._(this.value);

    factory Search&#x2F;codeParameter2.fromJson(String json) {
        return Search&#x2F;codeParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Search&#x2F;codeParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;codeParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;codeParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
