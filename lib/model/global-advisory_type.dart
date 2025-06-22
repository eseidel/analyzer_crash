import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/global-advisory_type.dart';
import 'package:github/model/global-advisory_type.dart';
enum Global-advisoryType {
    reviewed._('reviewed'),
    unreviewed._('unreviewed'),
    malware._('malware'),
    ;

    const Global-advisoryType._(this.value);

    factory Global-advisoryType.fromJson(String json) {
        return Global-advisoryType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Global-advisoryType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisoryType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Global-advisoryType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
