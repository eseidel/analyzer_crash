import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/list_for_org_parameter3_inner.dart';
import 'package:github/model/migrations/list_for_org_parameter3_inner.dart';
enum Migrations&#x2F;listForOrgParameter3Inner {
    repositories._('repositories'),
    ;

    const Migrations&#x2F;listForOrgParameter3Inner._(this.value);

    factory Migrations&#x2F;listForOrgParameter3Inner.fromJson(String json) {
        return Migrations&#x2F;listForOrgParameter3Inner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;listForOrgParameter3Inner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;listForOrgParameter3Inner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;listForOrgParameter3Inner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
