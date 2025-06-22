import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/get_status_for_org_parameter2_inner.dart';
import 'package:github/model/migrations/get_status_for_org_parameter2_inner.dart';
enum Migrations&#x2F;getStatusForOrgParameter2Inner {
    repositories._('repositories'),
    ;

    const Migrations&#x2F;getStatusForOrgParameter2Inner._(this.value);

    factory Migrations&#x2F;getStatusForOrgParameter2Inner.fromJson(String json) {
        return Migrations&#x2F;getStatusForOrgParameter2Inner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;getStatusForOrgParameter2Inner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;getStatusForOrgParameter2Inner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;getStatusForOrgParameter2Inner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
