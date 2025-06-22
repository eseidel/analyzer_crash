import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/list_members_legacy_parameter1.dart';
import 'package:github/model/teams/list_members_legacy_parameter1.dart';
enum Teams&#x2F;listMembersLegacyParameter1 {
    member._('member'),
    maintainer._('maintainer'),
    all._('all'),
    ;

    const Teams&#x2F;listMembersLegacyParameter1._(this.value);

    factory Teams&#x2F;listMembersLegacyParameter1.fromJson(String json) {
        return Teams&#x2F;listMembersLegacyParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Teams&#x2F;listMembersLegacyParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;listMembersLegacyParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;listMembersLegacyParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
