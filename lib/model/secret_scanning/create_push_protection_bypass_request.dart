import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret_scanning/create_push_protection_bypass_request.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/secret_scanning/create_push_protection_bypass_request.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
@immutable
class SecretScanning&#x2F;createPushProtectionBypassRequest {
    SecretScanning&#x2F;createPushProtectionBypassRequest(
        { required this.reason,required this.placeholder_id,
         }
    );

    factory SecretScanning&#x2F;createPushProtectionBypassRequest.fromJson(Map<String, dynamic>
        json) {
        return SecretScanning&#x2F;createPushProtectionBypassRequest(
            reason: Secret-scanning-push-protection-bypass-reason.fromJson(json['reason'] as String) ,
            placeholder_id: Secret-scanning-push-protection-bypass-placeholder-id((json['placeholder_id'] as String) ),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static SecretScanning&#x2F;createPushProtectionBypassRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return SecretScanning&#x2F;createPushProtectionBypassRequest.fromJson(json);
    }

    final Secret-scanning-push-protection-bypass-reason  reason;
    final Secret-scanning-push-protection-bypass-placeholder-id  placeholder_id;


    Map<String, dynamic> toJson() {
        return {
            'reason': reason.toJson(),
            'placeholder_id': placeholder_id.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          reason,
          placeholder_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is SecretScanning&#x2F;createPushProtectionBypassRequest
            && reason == other.reason
            && placeholder_id == other.placeholder_id
        ;
    }
}
