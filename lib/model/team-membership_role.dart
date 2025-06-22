import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_role.dart';
enum Team-membershipRole {
    member._('member'),
    maintainer._('maintainer'),
    ;

    const Team-membershipRole._(this.value);

    factory Team-membershipRole.fromJson(String json) {
        return Team-membershipRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Team-membershipRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-membershipRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Team-membershipRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
