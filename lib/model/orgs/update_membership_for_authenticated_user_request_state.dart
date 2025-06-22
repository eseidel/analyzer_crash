import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request_state.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request_state.dart';
enum Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState {
    active._('active'),
    ;

    const Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState._(this.value);

    factory Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState.fromJson(String json) {
        return Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateMembershipForAuthenticatedUserRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
