import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/list_parameter5.dart';
import 'package:github/model/pulls/list_parameter5.dart';
enum Pulls&#x2F;listParameter5 {
    created._('created'),
    updated._('updated'),
    popularity._('popularity'),
    long-running._('long-running'),
    ;

    const Pulls&#x2F;listParameter5._(this.value);

    factory Pulls&#x2F;listParameter5.fromJson(String json) {
        return Pulls&#x2F;listParameter5.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;listParameter5 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;listParameter5? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;listParameter5.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
