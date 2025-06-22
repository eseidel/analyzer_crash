import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-committed-event_verification.dart';
import 'package:github/model/timeline-committed-event_verification.dart';
@immutable
class Timeline-committed-eventVerification {
    Timeline-committed-eventVerification(
        { required this.verified,required this.reason,required this.signature,required this.payload,required this.verified_at,
         }
    );

    factory Timeline-committed-eventVerification.fromJson(Map<String, dynamic>
        json) {
        return Timeline-committed-eventVerification(
            verified: (json['verified'] as bool) ,
            reason: json['reason'] as String ,
            signature: json['signature'] as String ,
            payload: json['payload'] as String ,
            verified_at: json['verified_at'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-committed-eventVerification? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-committed-eventVerification.fromJson(json);
    }

    final bool  verified;
    final String  reason;
    final String  signature;
    final String  payload;
    final String  verified_at;


    Map<String, dynamic> toJson() {
        return {
            'verified': verified,
            'reason': reason,
            'signature': signature,
            'payload': payload,
            'verified_at': verified_at,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          verified,
          reason,
          signature,
          payload,
          verified_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-committed-eventVerification
            && verified == other.verified
            && reason == other.reason
            && signature == other.signature
            && payload == other.payload
            && verified_at == other.verified_at
        ;
    }
}
