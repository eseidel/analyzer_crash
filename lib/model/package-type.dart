import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-type.dart';
import 'package:github/model/package-type.dart';
enum Package-type {
    npm._('npm'),
    maven._('maven'),
    rubygems._('rubygems'),
    docker._('docker'),
    nuget._('nuget'),
    container._('container'),
    ;

    const Package-type._(this.value);

    factory Package-type.fromJson(String json) {
        return Package-type.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Package-type value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-type? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Package-type.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
