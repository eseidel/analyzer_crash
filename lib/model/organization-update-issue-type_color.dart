import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-update-issue-type_color.dart';
import 'package:github/model/organization-update-issue-type_color.dart';
enum Organization-update-issue-typeColor {
    gray._('gray'),
    blue._('blue'),
    green._('green'),
    yellow._('yellow'),
    orange._('orange'),
    red._('red'),
    pink._('pink'),
    purple._('purple'),
    ;

    const Organization-update-issue-typeColor._(this.value);

    factory Organization-update-issue-typeColor.fromJson(String json) {
        return Organization-update-issue-typeColor.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-update-issue-typeColor value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-update-issue-typeColor? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-update-issue-typeColor.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
