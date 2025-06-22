import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request_action.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request.dart';
import 'package:github/model/orgs/review_pat_grant_requests_in_bulk_request_action.dart';
@immutable
class Orgs&#x2F;reviewPatGrantRequestsInBulkRequest {
    Orgs&#x2F;reviewPatGrantRequestsInBulkRequest(
        {  this.pat_request_ids = const [],required this.action, this.reason,
         }
    );

    factory Orgs&#x2F;reviewPatGrantRequestsInBulkRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;reviewPatGrantRequestsInBulkRequest(
            pat_request_ids: (json['pat_request_ids'] as List?)?.cast<int>() ,
            action: Orgs/reviewPatGrantRequestsInBulkRequestAction.fromJson(json['action'] as String) ,
            reason: json['reason'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;reviewPatGrantRequestsInBulkRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;reviewPatGrantRequestsInBulkRequest.fromJson(json);
    }

    final  List<int>? pat_request_ids;
    final Orgs/reviewPatGrantRequestsInBulkRequestAction  action;
    final  String? reason;


    Map<String, dynamic> toJson() {
        return {
            'pat_request_ids': pat_request_ids,
            'action': action.toJson(),
            'reason': reason,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          pat_request_ids,
          action,
          reason,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;reviewPatGrantRequestsInBulkRequest
            && listsEqual(pat_request_ids, other.pat_request_ids)
            && action == other.action
            && reason == other.reason
        ;
    }
}
