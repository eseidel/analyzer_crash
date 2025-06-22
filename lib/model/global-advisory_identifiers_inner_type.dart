import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
enum Global-advisoryIdentifiersInnerType {
    cve._('CVE'),
    ghsa._('GHSA'),
    ;

    const Global-advisoryIdentifiersInnerType._(this.value);

    factory Global-advisoryIdentifiersInnerType.fromJson(String json) {
        return Global-advisoryIdentifiersInnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Global-advisoryIdentifiersInnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisoryIdentifiersInnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Global-advisoryIdentifiersInnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
