import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/create_invitation_request.dart';
import 'package:github/model/orgs/create_invitation_request_role.dart';
import 'package:github/model/orgs/create_invitation_request.dart';
import 'package:github/model/orgs/create_invitation_request_role.dart';
@immutable
class Orgs&#x2F;createInvitationRequest {
    Orgs&#x2F;createInvitationRequest(
        {  this.invitee_id, this.email, this.role = Orgs/createInvitationRequestRole.directMember, this.team_ids = const [],
         }
    );

    factory Orgs&#x2F;createInvitationRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;createInvitationRequest(
            invitee_id: (json['invitee_id'] as int?).toInt() ,
            email: json['email'] as String? ,
            role: Orgs/createInvitationRequestRole.maybeFromJson(json['role'] as String?) ,
            team_ids: (json['team_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;createInvitationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;createInvitationRequest.fromJson(json);
    }

    final  int? invitee_id;
    final  String? email;
    final  Orgs/createInvitationRequestRole? role;
    final  List<int>? team_ids;


    Map<String, dynamic> toJson() {
        return {
            'invitee_id': invitee_id,
            'email': email,
            'role': role?.toJson(),
            'team_ids': team_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          invitee_id,
          email,
          role,
          team_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;createInvitationRequest
            && invitee_id == other.invitee_id
            && email == other.email
            && role == other.role
            && listsEqual(team_ids, other.team_ids)
        ;
    }
}
