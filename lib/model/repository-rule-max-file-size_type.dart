import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
import 'package:github/model/repository-rule-max-file-size_type.dart';
enum Repository-rule-max-file-sizeType {
    maxFileSize._('max_file_size'),
    ;

    const Repository-rule-max-file-sizeType._(this.value);

    factory Repository-rule-max-file-sizeType.fromJson(String json) {
        return Repository-rule-max-file-sizeType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-max-file-sizeType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-max-file-sizeType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-max-file-sizeType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
