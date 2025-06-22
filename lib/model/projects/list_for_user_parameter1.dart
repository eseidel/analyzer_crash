import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/list_for_user_parameter1.dart';
import 'package:github/model/projects/list_for_user_parameter1.dart';
enum Projects&#x2F;listForUserParameter1 {
    open._('open'),
    closed._('closed'),
    all._('all'),
    ;

    const Projects&#x2F;listForUserParameter1._(this.value);

    factory Projects&#x2F;listForUserParameter1.fromJson(String json) {
        return Projects&#x2F;listForUserParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Projects&#x2F;listForUserParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;listForUserParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;listForUserParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
