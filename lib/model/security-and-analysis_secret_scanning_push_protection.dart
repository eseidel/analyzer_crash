import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
@immutable
class Security-and-analysisSecretScanningPushProtection {
    Security-and-analysisSecretScanningPushProtection(
        {  this.status,
         }
    );

    factory Security-and-analysisSecretScanningPushProtection.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisSecretScanningPushProtection(
            status: Security-and-analysisSecretScanningPushProtectionStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningPushProtection? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningPushProtection.fromJson(json);
    }

    final  Security-and-analysisSecretScanningPushProtectionStatus? status;


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
        return other is Security-and-analysisSecretScanningPushProtection
            && status == other.status
        ;
    }
}
