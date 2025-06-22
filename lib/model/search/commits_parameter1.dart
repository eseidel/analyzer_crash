import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/commits_parameter1.dart';
import 'package:github/model/search/commits_parameter1.dart';
enum Search&#x2F;commitsParameter1 {
    author-date._('author-date'),
    committer-date._('committer-date'),
    ;

    const Search&#x2F;commitsParameter1._(this.value);

    factory Search&#x2F;commitsParameter1.fromJson(String json) {
        return Search&#x2F;commitsParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Search&#x2F;commitsParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;commitsParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;commitsParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
