import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
import 'package:github/model/repository-rule-pull-request_type.dart';
enum Repository-rule-pull-requestType {
    pullRequest._('pull_request'),
    ;

    const Repository-rule-pull-requestType._(this.value);

    factory Repository-rule-pull-requestType.fromJson(String json) {
        return Repository-rule-pull-requestType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-pull-requestType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-pull-requestType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-pull-requestType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
