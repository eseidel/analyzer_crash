import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_pat_accesses_request.dart';
import 'package:github/model/orgs/update_pat_accesses_request_action.dart';
import 'package:github/model/orgs/update_pat_accesses_request.dart';
import 'package:github/model/orgs/update_pat_accesses_request_action.dart';
@immutable
class Orgs&#x2F;updatePatAccessesRequest {
    Orgs&#x2F;updatePatAccessesRequest(
        { required this.action, this.pat_ids = const [],
         }
    );

    factory Orgs&#x2F;updatePatAccessesRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;updatePatAccessesRequest(
            action: Orgs/updatePatAccessesRequestAction.fromJson(json['action'] as String) ,
            pat_ids: (json['pat_ids'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updatePatAccessesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updatePatAccessesRequest.fromJson(json);
    }

    final Orgs/updatePatAccessesRequestAction  action;
    final List<int>  pat_ids;


    Map<String, dynamic> toJson() {
        return {
            'action': action.toJson(),
            'pat_ids': pat_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          action,
          pat_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;updatePatAccessesRequest
            && action == other.action
            && listsEqual(pat_ids, other.pat_ids)
        ;
    }
}
