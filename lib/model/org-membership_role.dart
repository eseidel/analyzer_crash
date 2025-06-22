import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/org-membership_role.dart';
enum Org-membershipRole {
    admin._('admin'),
    member._('member'),
    billingManager._('billing_manager'),
    ;

    const Org-membershipRole._(this.value);

    factory Org-membershipRole.fromJson(String json) {
        return Org-membershipRole.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-membershipRole value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-membershipRole? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-membershipRole.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
