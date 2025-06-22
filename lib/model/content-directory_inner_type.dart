import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_type.dart';
enum Content-directoryInnerType {
    dir._('dir'),
    file._('file'),
    submodule._('submodule'),
    symlink._('symlink'),
    ;

    const Content-directoryInnerType._(this.value);

    factory Content-directoryInnerType.fromJson(String json) {
        return Content-directoryInnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Content-directoryInnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-directoryInnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Content-directoryInnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
