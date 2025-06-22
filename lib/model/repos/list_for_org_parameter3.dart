import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_for_org_parameter3.dart';
import 'package:github/model/repos/list_for_org_parameter3.dart';
enum Repos&#x2F;listForOrgParameter3 {
    asc._('asc'),
    desc._('desc'),
    ;

    const Repos&#x2F;listForOrgParameter3._(this.value);

    factory Repos&#x2F;listForOrgParameter3.fromJson(String json) {
        return Repos&#x2F;listForOrgParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listForOrgParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listForOrgParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listForOrgParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
