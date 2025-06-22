import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
enum Repository-rule-file-path-restrictionType {
    filePathRestriction._('file_path_restriction'),
    ;

    const Repository-rule-file-path-restrictionType._(this.value);

    factory Repository-rule-file-path-restrictionType.fromJson(String json) {
        return Repository-rule-file-path-restrictionType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-file-path-restrictionType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-path-restrictionType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-path-restrictionType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
