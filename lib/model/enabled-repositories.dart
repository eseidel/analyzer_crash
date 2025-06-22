import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/enabled-repositories.dart';
enum Enabled-repositories {
    all._('all'),
    none._('none'),
    selected._('selected'),
    ;

    const Enabled-repositories._(this.value);

    factory Enabled-repositories.fromJson(String json) {
        return Enabled-repositories.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Enabled-repositories value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Enabled-repositories? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Enabled-repositories.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
