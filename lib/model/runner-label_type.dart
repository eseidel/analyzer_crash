import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner-label_type.dart';
enum Runner-labelType {
    read-only._('read-only'),
    custom._('custom'),
    ;

    const Runner-labelType._(this.value);

    factory Runner-labelType.fromJson(String json) {
        return Runner-labelType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Runner-labelType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Runner-labelType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Runner-labelType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
