import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_memberships_for_authenticated_user_parameter0.dart';
import 'package:github/model/orgs/list_memberships_for_authenticated_user_parameter0.dart';
enum Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0 {
    active._('active'),
    pending._('pending'),
    ;

    const Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0._(this.value);

    factory Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0.fromJson(String json) {
        return Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listMembershipsForAuthenticatedUserParameter0.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
