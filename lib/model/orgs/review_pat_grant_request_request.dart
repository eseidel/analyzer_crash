import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/review_pat_grant_request_request.dart';
import 'package:github/model/orgs/review_pat_grant_request_request_action.dart';
import 'package:github/model/orgs/review_pat_grant_request_request.dart';
import 'package:github/model/orgs/review_pat_grant_request_request_action.dart';
@immutable
class Orgs&#x2F;reviewPatGrantRequestRequest {
    Orgs&#x2F;reviewPatGrantRequestRequest(
        { required this.action, this.reason,
         }
    );

    factory Orgs&#x2F;reviewPatGrantRequestRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;reviewPatGrantRequestRequest(
            action: Orgs/reviewPatGrantRequestRequestAction.fromJson(json['action'] as String) ,
            reason: json['reason'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;reviewPatGrantRequestRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;reviewPatGrantRequestRequest.fromJson(json);
    }

    final Orgs/reviewPatGrantRequestRequestAction  action;
    final  String? reason;


    Map<String, dynamic> toJson() {
        return {
            'action': action.toJson(),
            'reason': reason,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          action,
          reason,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;reviewPatGrantRequestRequest
            && action == other.action
            && reason == other.reason
        ;
    }
}
