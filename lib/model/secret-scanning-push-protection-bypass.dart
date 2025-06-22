import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-push-protection-bypass.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
import 'package:github/model/secret-scanning-push-protection-bypass.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-reason.dart';
@immutable
class Secret-scanning-push-protection-bypass {
    Secret-scanning-push-protection-bypass(
        {  this.reason, this.expire_at, this.token_type,
         }
    );

    factory Secret-scanning-push-protection-bypass.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-push-protection-bypass(
            reason: Secret-scanning-push-protection-bypass-reason.maybeFromJson(json['reason'] as String?) ,
            expire_at: maybeParseDateTime(json['expire_at'] as String?) ,
            token_type: json['token_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-push-protection-bypass? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-push-protection-bypass.fromJson(json);
    }

    final  Secret-scanning-push-protection-bypass-reason? reason;
    final  DateTime? expire_at;
    final  String? token_type;


    Map<String, dynamic> toJson() {
        return {
            'reason': reason?.toJson(),
            'expire_at': expire_at?.toIso8601String(),
            'token_type': token_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          reason,
          expire_at,
          token_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-push-protection-bypass
            && reason == other.reason
            && expire_at == other.expire_at
            && token_type == other.token_type
        ;
    }
}
