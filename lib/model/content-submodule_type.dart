import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-submodule_type.dart';
import 'package:github/model/content-submodule_type.dart';
enum Content-submoduleType {
    submodule._('submodule'),
    ;

    const Content-submoduleType._(this.value);

    factory Content-submoduleType.fromJson(String json) {
        return Content-submoduleType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Content-submoduleType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-submoduleType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Content-submoduleType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
