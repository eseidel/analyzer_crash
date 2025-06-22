import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request_state.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request.dart';
import 'package:github/model/orgs/update_membership_for_authenticated_user_request_state.dart';
@immutable
class Orgs&#x2F;updateMembershipForAuthenticatedUserRequest {
    Orgs&#x2F;updateMembershipForAuthenticatedUserRequest(
        { required this.state,
         }
    );

    factory Orgs&#x2F;updateMembershipForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;updateMembershipForAuthenticatedUserRequest(
            state: Orgs/updateMembershipForAuthenticatedUserRequestState.fromJson(json['state'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateMembershipForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateMembershipForAuthenticatedUserRequest.fromJson(json);
    }

    final Orgs/updateMembershipForAuthenticatedUserRequestState  state;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
        };
    }

    @override
    int get hashCode =>
          state.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;updateMembershipForAuthenticatedUserRequest
            && state == other.state
        ;
    }
}
