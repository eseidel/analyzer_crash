import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
enum Dependabot-alert-security-advisoryIdentifiersInnerType {
    cve._('CVE'),
    ghsa._('GHSA'),
    ;

    const Dependabot-alert-security-advisoryIdentifiersInnerType._(this.value);

    factory Dependabot-alert-security-advisoryIdentifiersInnerType.fromJson(String json) {
        return Dependabot-alert-security-advisoryIdentifiersInnerType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-security-advisoryIdentifiersInnerType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisoryIdentifiersInnerType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisoryIdentifiersInnerType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
