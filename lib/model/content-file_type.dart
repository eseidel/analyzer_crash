import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_type.dart';
enum Content-fileType {
    file._('file'),
    ;

    const Content-fileType._(this.value);

    factory Content-fileType.fromJson(String json) {
        return Content-fileType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Content-fileType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-fileType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Content-fileType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
