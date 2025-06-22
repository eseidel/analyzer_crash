import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/lock_request.dart';
import 'package:github/model/issues/lock_request_lock_reason.dart';
import 'package:github/model/issues/lock_request.dart';
import 'package:github/model/issues/lock_request_lock_reason.dart';
@immutable
class Issues&#x2F;lockRequest {
    Issues&#x2F;lockRequest(
        {  this.lock_reason,
         }
    );

    factory Issues&#x2F;lockRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;lockRequest(
            lock_reason: Issues/lockRequestLockReason.maybeFromJson(json['lock_reason'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;lockRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;lockRequest.fromJson(json);
    }

    final  Issues/lockRequestLockReason? lock_reason;


    Map<String, dynamic> toJson() {
        return {
            'lock_reason': lock_reason?.toJson(),
        };
    }

    @override
    int get hashCode =>
          lock_reason.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;lockRequest
            && lock_reason == other.lock_reason
        ;
    }
}
