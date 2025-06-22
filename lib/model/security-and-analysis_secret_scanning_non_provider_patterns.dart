import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
@immutable
class Security-and-analysisSecretScanningNonProviderPatterns {
    Security-and-analysisSecretScanningNonProviderPatterns(
        {  this.status,
         }
    );

    factory Security-and-analysisSecretScanningNonProviderPatterns.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisSecretScanningNonProviderPatterns(
            status: Security-and-analysisSecretScanningNonProviderPatternsStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisSecretScanningNonProviderPatterns? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisSecretScanningNonProviderPatterns.fromJson(json);
    }

    final  Security-and-analysisSecretScanningNonProviderPatternsStatus? status;


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
        return other is Security-and-analysisSecretScanningNonProviderPatterns
            && status == other.status
        ;
    }
}
