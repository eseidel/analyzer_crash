import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
enum Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility {
    public._('public'),
    private._('private'),
    ;

    const Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility._(this.value);

    factory Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility.fromJson(String json) {
        return Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
