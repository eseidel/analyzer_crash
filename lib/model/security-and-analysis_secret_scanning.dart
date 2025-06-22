import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
@immutable
class Security-and-analysisSecretScanning {
    Security-and-analysisSecretScanning(
        {  this.status,
         }
    );

    factory Security-and-analysisSecretScanning.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisSecretScanning(
            status: Security-and-analysisSecretScanningStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanning? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanning.fromJson(json);
    }

    final  Security-and-analysisSecretScanningStatus? status;


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
        return other is Security-and-analysisSecretScanning
            && status == other.status
        ;
    }
}
