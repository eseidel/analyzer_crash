import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
@immutable
class Security-and-analysis {
    Security-and-analysis(
        {  this.advanced_security, this.code_security, this.dependabot_security_updates, this.secret_scanning, this.secret_scanning_push_protection, this.secret_scanning_non_provider_patterns, this.secret_scanning_ai_detection,
         }
    );

    factory Security-and-analysis.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysis(
            advanced_security: Security-and-analysisAdvancedSecurity.maybeFromJson(json['advanced_security'] as Map<String, dynamic>?) ,
            code_security: Security-and-analysisCodeSecurity.maybeFromJson(json['code_security'] as Map<String, dynamic>?) ,
            dependabot_security_updates: Security-and-analysisDependabotSecurityUpdates.maybeFromJson(json['dependabot_security_updates'] as Map<String, dynamic>?) ,
            secret_scanning: Security-and-analysisSecretScanning.maybeFromJson(json['secret_scanning'] as Map<String, dynamic>?) ,
            secret_scanning_push_protection: Security-and-analysisSecretScanningPushProtection.maybeFromJson(json['secret_scanning_push_protection'] as Map<String, dynamic>?) ,
            secret_scanning_non_provider_patterns: Security-and-analysisSecretScanningNonProviderPatterns.maybeFromJson(json['secret_scanning_non_provider_patterns'] as Map<String, dynamic>?) ,
            secret_scanning_ai_detection: Security-and-analysisSecretScanningAiDetection.maybeFromJson(json['secret_scanning_ai_detection'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysis? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysis.fromJson(json);
    }

    final  Security-and-analysisAdvancedSecurity? advanced_security;
    final  Security-and-analysisCodeSecurity? code_security;
    final  Security-and-analysisDependabotSecurityUpdates? dependabot_security_updates;
    final  Security-and-analysisSecretScanning? secret_scanning;
    final  Security-and-analysisSecretScanningPushProtection? secret_scanning_push_protection;
    final  Security-and-analysisSecretScanningNonProviderPatterns? secret_scanning_non_provider_patterns;
    final  Security-and-analysisSecretScanningAiDetection? secret_scanning_ai_detection;


    Map<String, dynamic> toJson() {
        return {
            'advanced_security': advanced_security?.toJson(),
            'code_security': code_security?.toJson(),
            'dependabot_security_updates': dependabot_security_updates?.toJson(),
            'secret_scanning': secret_scanning?.toJson(),
            'secret_scanning_push_protection': secret_scanning_push_protection?.toJson(),
            'secret_scanning_non_provider_patterns': secret_scanning_non_provider_patterns?.toJson(),
            'secret_scanning_ai_detection': secret_scanning_ai_detection?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          advanced_security,
          code_security,
          dependabot_security_updates,
          secret_scanning,
          secret_scanning_push_protection,
          secret_scanning_non_provider_patterns,
          secret_scanning_ai_detection,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Security-and-analysis
            && advanced_security == other.advanced_security
            && code_security == other.code_security
            && dependabot_security_updates == other.dependabot_security_updates
            && secret_scanning == other.secret_scanning
            && secret_scanning_push_protection == other.secret_scanning_push_protection
            && secret_scanning_non_provider_patterns == other.secret_scanning_non_provider_patterns
            && secret_scanning_ai_detection == other.secret_scanning_ai_detection
        ;
    }
}
