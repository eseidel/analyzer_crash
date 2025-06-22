import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
@immutable
class Security-and-analysisDependabotSecurityUpdates {
    Security-and-analysisDependabotSecurityUpdates(
        {  this.status,
         }
    );

    factory Security-and-analysisDependabotSecurityUpdates.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisDependabotSecurityUpdates(
            status: Security-and-analysisDependabotSecurityUpdatesStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisDependabotSecurityUpdates? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisDependabotSecurityUpdates.fromJson(json);
    }

    final  Security-and-analysisDependabotSecurityUpdatesStatus? status;


    Map<String, dynamic> toJson() {
        return {
            'status': status?.toJson(),
        };
    }

    @override
    int get hashCode =>
          status.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Security-and-analysisDependabotSecurityUpdates
            && status == other.status
        ;
    }
}
