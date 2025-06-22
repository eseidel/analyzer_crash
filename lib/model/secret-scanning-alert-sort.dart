import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-alert-sort.dart';
import 'package:github/model/secret-scanning-alert-sort.dart';
enum Secret-scanning-alert-sort {
    created._('created'),
    updated._('updated'),
    ;

    const Secret-scanning-alert-sort._(this.value);

    factory Secret-scanning-alert-sort.fromJson(String json) {
        return Secret-scanning-alert-sort.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-alert-sort value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-alert-sort? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-alert-sort.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
