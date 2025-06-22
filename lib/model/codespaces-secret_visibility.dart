import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
enum Codespaces-secretVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Codespaces-secretVisibility._(this.value);

    factory Codespaces-secretVisibility.fromJson(String json) {
        return Codespaces-secretVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespaces-secretVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces-secretVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespaces-secretVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
