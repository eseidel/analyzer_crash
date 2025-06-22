import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request_exclude_inner.dart';
import 'package:github/model/migrations/start_for_authenticated_user_request_exclude_inner.dart';
enum Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner {
    repositories._('repositories'),
    ;

    const Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner._(this.value);

    factory Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner.fromJson(String json) {
        return Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;startForAuthenticatedUserRequestExcludeInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
