import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_members_parameter1.dart';
import 'package:github/model/orgs/list_members_parameter1.dart';
enum Orgs&#x2F;listMembersParameter1 {
    2faDisabled._('2fa_disabled'),
    2faInsecure._('2fa_insecure'),
    all._('all'),
    ;

    const Orgs&#x2F;listMembersParameter1._(this.value);

    factory Orgs&#x2F;listMembersParameter1.fromJson(String json) {
        return Orgs&#x2F;listMembersParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;listMembersParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listMembersParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listMembersParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
