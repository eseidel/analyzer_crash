import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
@immutable
class Security-and-analysisSecretScanningAiDetection {
    Security-and-analysisSecretScanningAiDetection(
        {  this.status,
         }
    );

    factory Security-and-analysisSecretScanningAiDetection.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisSecretScanningAiDetection(
            status: Security-and-analysisSecretScanningAiDetectionStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningAiDetection? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningAiDetection.fromJson(json);
    }

    final  Security-and-analysisSecretScanningAiDetectionStatus? status;


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
        return other is Security-and-analysisSecretScanningAiDetection
            && status == other.status
        ;
    }
}
