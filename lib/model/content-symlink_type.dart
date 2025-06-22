import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_type.dart';
enum Content-symlinkType {
    symlink._('symlink'),
    ;

    const Content-symlinkType._(this.value);

    factory Content-symlinkType.fromJson(String json) {
        return Content-symlinkType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Content-symlinkType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-symlinkType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Content-symlinkType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
