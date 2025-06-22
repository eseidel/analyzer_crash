import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/list_parameter6.dart';
import 'package:github/model/pulls/list_parameter6.dart';
enum Pulls&#x2F;listParameter6 {
    asc._('asc'),
    desc._('desc'),
    ;

    const Pulls&#x2F;listParameter6._(this.value);

    factory Pulls&#x2F;listParameter6.fromJson(String json) {
        return Pulls&#x2F;listParameter6.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;listParameter6 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;listParameter6? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;listParameter6.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
