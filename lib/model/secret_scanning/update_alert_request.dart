import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret_scanning/update_alert_request.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/secret-scanning-alert-resolution-comment.dart';
import 'package:github/model/secret_scanning/update_alert_request.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/secret-scanning-alert-resolution-comment.dart';
@immutable
class SecretScanning&#x2F;updateAlertRequest {
    SecretScanning&#x2F;updateAlertRequest(
        { required this.state, this.resolution, this.resolution_comment,
         }
    );

    factory SecretScanning&#x2F;updateAlertRequest.fromJson(Map<String, dynamic>
        json) {
        return SecretScanning&#x2F;updateAlertRequest(
            state: Secret-scanning-alert-state.fromJson(json['state'] as String) ,
            resolution: Secret-scanning-alert-resolution.maybeFromJson(json['resolution'] as String?) ,
            resolution_comment: Secret-scanning-alert-resolution-comment((json['resolution_comment'] as String?) ),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecretScanning&#x2F;updateAlertRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return SecretScanning&#x2F;updateAlertRequest.fromJson(json);
    }

    final Secret-scanning-alert-state  state;
    final  Secret-scanning-alert-resolution? resolution;
    final  Secret-scanning-alert-resolution-comment? resolution_comment;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'resolution': resolution?.toJson(),
            'resolution_comment': resolution_comment?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          resolution,
          resolution_comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is SecretScanning&#x2F;updateAlertRequest
            && state == other.state
            && resolution == other.resolution
            && resolution_comment == other.resolution_comment
        ;
    }
}
