import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_members_parameter2.dart';
import 'package:github/model/orgs/list_members_parameter2.dart';
enum Orgs&#x2F;listMembersParameter2 {
    all._('all'),
    admin._('admin'),
    member._('member'),
    ;

    const Orgs&#x2F;listMembersParameter2._(this.value);

    factory Orgs&#x2F;listMembersParameter2.fromJson(String json) {
        return Orgs&#x2F;listMembersParameter2.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;listMembersParameter2 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listMembersParameter2? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listMembersParameter2.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
