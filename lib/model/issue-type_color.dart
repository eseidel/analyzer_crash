import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/issue-type_color.dart';
enum Issue-typeColor {
    gray._('gray'),
    blue._('blue'),
    green._('green'),
    yellow._('yellow'),
    orange._('orange'),
    red._('red'),
    pink._('pink'),
    purple._('purple'),
    ;

    const Issue-typeColor._(this.value);

    factory Issue-typeColor.fromJson(String json) {
        return Issue-typeColor.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issue-typeColor value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-typeColor? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issue-typeColor.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
