import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/git-commit_verification.dart';
@immutable
class Git-commitVerification {
    Git-commitVerification(
        { required this.verified,required this.reason,required this.signature,required this.payload,required this.verified_at,
         }
    );

    factory Git-commitVerification.fromJson(Map<String, dynamic>
        json) {
        return Git-commitVerification(
            verified: (json['verified'] as bool) ,
            reason: json['reason'] as String ,
            signature: json['signature'] as String ,
            payload: json['payload'] as String ,
            verified_at: json['verified_at'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-commitVerification? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-commitVerification.fromJson(json);
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
        return other is Git-commitVerification
            && verified == other.verified
            && reason == other.reason
            && signature == other.signature
            && payload == other.payload
            && verified_at == other.verified_at
        ;
    }
}
