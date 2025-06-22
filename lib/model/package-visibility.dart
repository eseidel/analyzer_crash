import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-visibility.dart';
import 'package:github/model/package-visibility.dart';
enum Package-visibility {
    public._('public'),
    private._('private'),
    internal._('internal'),
    ;

    const Package-visibility._(this.value);

    factory Package-visibility.fromJson(String json) {
        return Package-visibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Package-visibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-visibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Package-visibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
