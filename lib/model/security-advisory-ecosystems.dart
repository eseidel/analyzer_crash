import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
import 'package:github/model/security-advisory-ecosystems.dart';
enum Security-advisory-ecosystems {
    rubygems._('rubygems'),
    npm._('npm'),
    pip._('pip'),
    maven._('maven'),
    nuget._('nuget'),
    composer._('composer'),
    go._('go'),
    rust._('rust'),
    erlang._('erlang'),
    actions._('actions'),
    pub._('pub'),
    other._('other'),
    swift._('swift'),
    ;

    const Security-advisory-ecosystems._(this.value);

    factory Security-advisory-ecosystems.fromJson(String json) {
        return Security-advisory-ecosystems.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Security-advisory-ecosystems value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-advisory-ecosystems? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Security-advisory-ecosystems.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
