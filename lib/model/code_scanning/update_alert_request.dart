import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code_scanning/update_alert_request.dart';
import 'package:github/model/code-scanning-alert-set-state.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
import 'package:github/model/code_scanning/update_alert_request.dart';
import 'package:github/model/code-scanning-alert-set-state.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-comment.dart';
@immutable
class CodeScanning&#x2F;updateAlertRequest {
    CodeScanning&#x2F;updateAlertRequest(
        { required this.state, this.dismissed_reason, this.dismissed_comment, this.create_request,
         }
    );

    factory CodeScanning&#x2F;updateAlertRequest.fromJson(Map<String, dynamic>
        json) {
        return CodeScanning&#x2F;updateAlertRequest(
            state: Code-scanning-alert-set-state.fromJson(json['state'] as String) ,
            dismissed_reason: Code-scanning-alert-dismissed-reason.maybeFromJson(json['dismissed_reason'] as String?) ,
            dismissed_comment: Code-scanning-alert-dismissed-comment((json['dismissed_comment'] as String?) ),
            create_request: (json['create_request'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CodeScanning&#x2F;updateAlertRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CodeScanning&#x2F;updateAlertRequest.fromJson(json);
    }

    final Code-scanning-alert-set-state  state;
    final  Code-scanning-alert-dismissed-reason? dismissed_reason;
    final  Code-scanning-alert-dismissed-comment? dismissed_comment;
    final  bool? create_request;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'dismissed_reason': dismissed_reason?.toJson(),
            'dismissed_comment': dismissed_comment?.toJson(),
            'create_request': create_request,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          dismissed_reason,
          dismissed_comment,
          create_request,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CodeScanning&#x2F;updateAlertRequest
            && state == other.state
            && dismissed_reason == other.dismissed_reason
            && dismissed_comment == other.dismissed_comment
            && create_request == other.create_request
        ;
    }
}
