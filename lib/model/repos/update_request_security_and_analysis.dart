import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request_security_and_analysis.dart';
import 'package:github/model/repos/update_request_security_and_analysis_advanced_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/repos/update_request_security_and_analysis.dart';
import 'package:github/model/repos/update_request_security_and_analysis_advanced_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning_non_provider_patterns.dart';
@immutable
class Repos&#x2F;updateRequestSecurityAndAnalysis {
    Repos&#x2F;updateRequestSecurityAndAnalysis(
        {  this.advanced_security, this.code_security, this.secret_scanning, this.secret_scanning_push_protection, this.secret_scanning_ai_detection, this.secret_scanning_non_provider_patterns,
         }
    );

    factory Repos&#x2F;updateRequestSecurityAndAnalysis.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateRequestSecurityAndAnalysis(
            advanced_security: Repos/updateRequestSecurityAndAnalysisAdvancedSecurity.maybeFromJson(json['advanced_security'] as Map<String, dynamic>?) ,
            code_security: Repos/updateRequestSecurityAndAnalysisCodeSecurity.maybeFromJson(json['code_security'] as Map<String, dynamic>?) ,
            secret_scanning: Repos/updateRequestSecurityAndAnalysisSecretScanning.maybeFromJson(json['secret_scanning'] as Map<String, dynamic>?) ,
            secret_scanning_push_protection: Repos/updateRequestSecurityAndAnalysisSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as Map<String, dynamic>?) ,
            secret_scanning_ai_detection: Repos/updateRequestSecurityAndAnalysisSecretScanningAiDetection.maybeFromJson(json['secret_scanning_ai_detection'] as Map<String, dynamic>?) ,
            secret_scanning_non_provider_patterns: Repos/updateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequestSecurityAndAnalysis? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequestSecurityAndAnalysis.fromJson(json);
    }

    final  Repos/updateRequestSecurityAndAnalysisAdvancedSecurity? advanced_security;
    final  Repos/updateRequestSecurityAndAnalysisCodeSecurity? code_security;
    final  Repos/updateRequestSecurityAndAnalysisSecretScanning? secret_scanning;
    final  Repos/updateRequestSecurityAndAnalysisSecretScanningPushProtection? secret_scanning_push_protection;
    final  Repos/updateRequestSecurityAndAnalysisSecretScanningAiDetection? secret_scanning_ai_detection;
    final  Repos/updateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;


    Map<String, dynamic> toJson() {
        return {
            'advanced_security': advanced_security?.toJson(),
            'code_security': code_security?.toJson(),
            'secret_scanning': secret_scanning?.toJson(),
            'secret_scanning_push_protection': secret_scanning_push_protection?.toJson(),
            'secret_scanning_ai_detection': secret_scanning_ai_detection?.toJson(),
            'secret_scanning_non_provider_patterns': secret_scanning_non_provider_patterns?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          advanced_security,
          code_security,
          secret_scanning,
          secret_scanning_push_protection,
          secret_scanning_ai_detection,
          secret_scanning_non_provider_patterns,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateRequestSecurityAndAnalysis
            && advanced_security == other.advanced_security
            && code_security == other.code_security
            && secret_scanning == other.secret_scanning
            && secret_scanning_push_protection == other.secret_scanning_push_protection
            && secret_scanning_ai_detection == other.secret_scanning_ai_detection
            && secret_scanning_non_provider_patterns == other.secret_scanning_non_provider_patterns
        ;
    }
}
