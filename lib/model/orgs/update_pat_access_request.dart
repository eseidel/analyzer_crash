import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_pat_access_request.dart';
import 'package:github/model/orgs/update_pat_access_request_action.dart';
import 'package:github/model/orgs/update_pat_access_request.dart';
import 'package:github/model/orgs/update_pat_access_request_action.dart';
@immutable
class Orgs&#x2F;updatePatAccessRequest {
    Orgs&#x2F;updatePatAccessRequest(
        { required this.action,
         }
    );

    factory Orgs&#x2F;updatePatAccessRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;updatePatAccessRequest(
            action: Orgs/updatePatAccessRequestAction.fromJson(json['action'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updatePatAccessRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updatePatAccessRequest.fromJson(json);
    }

    final Orgs/updatePatAccessRequestAction  action;


    Map<String, dynamic> toJson() {
        return {
            'action': action.toJson(),
        };
    }

    @override
    int get hashCode =>
          action.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;updatePatAccessRequest
            && action == other.action
        ;
    }
}
