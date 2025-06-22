import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
@immutable
class Status-check-policyChecksInner {
    Status-check-policyChecksInner(
        { required this.context,required this.app_id,
         }
    );

    factory Status-check-policyChecksInner.fromJson(Map<String, dynamic>
        json) {
        return Status-check-policyChecksInner(
            context: json['context'] as String ,
            app_id: (json['app_id'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Status-check-policyChecksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Status-check-policyChecksInner.fromJson(json);
    }

    final String  context;
    final int  app_id;


    Map<String, dynamic> toJson() {
        return {
            'context': context,
            'app_id': app_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          context,
          app_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Status-check-policyChecksInner
            && context == other.context
            && app_id == other.app_id
        ;
    }
}
