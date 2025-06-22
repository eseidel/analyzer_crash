import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
enum Repository-rule-required-signaturesType {
    requiredSignatures._('required_signatures'),
    ;

    const Repository-rule-required-signaturesType._(this.value);

    factory Repository-rule-required-signaturesType.fromJson(String json) {
        return Repository-rule-required-signaturesType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-rule-required-signaturesType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-signaturesType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-signaturesType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
