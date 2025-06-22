import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/list_parameter2.dart';
import 'package:github/model/pulls/list_parameter2.dart';
enum Pulls&#x2F;listParameter2 {
    open._('open'),
    closed._('closed'),
    all._('all'),
    ;

    const Pulls&#x2F;listParameter2._(this.value);

    factory Pulls&#x2F;listParameter2.fromJson(String json) {
        return Pulls&#x2F;listParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;listParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;listParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;listParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
