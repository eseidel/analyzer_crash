import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
enum Repository-rule-file-extension-restrictionType {
    fileExtensionRestriction._('file_extension_restriction'),
    ;

    const Repository-rule-file-extension-restrictionType._(this.value);

    factory Repository-rule-file-extension-restrictionType.fromJson(String json) {
        return Repository-rule-file-extension-restrictionType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-file-extension-restrictionType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-extension-restrictionType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-extension-restrictionType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
