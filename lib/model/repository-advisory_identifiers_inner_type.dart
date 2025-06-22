import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
enum Repository-advisoryIdentifiersInnerType {
    cve._('CVE'),
    ghsa._('GHSA'),
    ;

    const Repository-advisoryIdentifiersInnerType._(this.value);

    factory Repository-advisoryIdentifiersInnerType.fromJson(String json) {
        return Repository-advisoryIdentifiersInnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisoryIdentifiersInnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisoryIdentifiersInnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisoryIdentifiersInnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
