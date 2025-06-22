import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/update_alert_request.dart';
import 'package:github/model/dependabot/update_alert_request_state.dart';
import 'package:github/model/dependabot/update_alert_request_dismissed_reason.dart';
import 'package:github/model/dependabot/update_alert_request.dart';
import 'package:github/model/dependabot/update_alert_request_state.dart';
import 'package:github/model/dependabot/update_alert_request_dismissed_reason.dart';
@immutable
class Dependabot&#x2F;updateAlertRequest {
    Dependabot&#x2F;updateAlertRequest(
        { required this.state, this.dismissed_reason, this.dismissed_comment,
         }
    );

    factory Dependabot&#x2F;updateAlertRequest.fromJson(Map<String, dynamic>
        json) {
        return Dependabot&#x2F;updateAlertRequest(
            state: Dependabot/updateAlertRequestState.fromJson(json['state'] as String) ,
            dismissed_reason: Dependabot/updateAlertRequestDismissedReason.maybeFromJson(json['dismissed_reason'] as String?) ,
            dismissed_comment: json['dismissed_comment'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;updateAlertRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;updateAlertRequest.fromJson(json);
    }

    final Dependabot/updateAlertRequestState  state;
    final  Dependabot/updateAlertRequestDismissedReason? dismissed_reason;
    final  String? dismissed_comment;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'dismissed_reason': dismissed_reason?.toJson(),
            'dismissed_comment': dismissed_comment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          dismissed_reason,
          dismissed_comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot&#x2F;updateAlertRequest
            && state == other.state
            && dismissed_reason == other.dismissed_reason
            && dismissed_comment == other.dismissed_comment
        ;
    }
}
