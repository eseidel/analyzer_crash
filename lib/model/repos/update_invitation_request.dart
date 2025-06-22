import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_invitation_request.dart';
import 'package:github/model/repos/update_invitation_request_permissions.dart';
import 'package:github/model/repos/update_invitation_request.dart';
import 'package:github/model/repos/update_invitation_request_permissions.dart';
@immutable
class Repos&#x2F;updateInvitationRequest {
    Repos&#x2F;updateInvitationRequest(
        {  this.permissions,
         }
    );

    factory Repos&#x2F;updateInvitationRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateInvitationRequest(
            permissions: Repos/updateInvitationRequestPermissions.maybeFromJson(json['permissions'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateInvitationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateInvitationRequest.fromJson(json);
    }

    final  Repos/updateInvitationRequestPermissions? permissions;


    Map<String, dynamic> toJson() {
        return {
            'permissions': permissions?.toJson(),
        };
    }

    @override
    int get hashCode =>
          permissions.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateInvitationRequest
            && permissions == other.permissions
        ;
    }
}
