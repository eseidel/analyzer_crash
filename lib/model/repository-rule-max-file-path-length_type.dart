import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
import 'package:github/model/repository-rule-max-file-path-length_type.dart';
enum Repository-rule-max-file-path-lengthType {
    maxFilePathLength._('max_file_path_length'),
    ;

    const Repository-rule-max-file-path-lengthType._(this.value);

    factory Repository-rule-max-file-path-lengthType.fromJson(String json) {
        return Repository-rule-max-file-path-lengthType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-max-file-path-lengthType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-path-lengthType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-path-lengthType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
