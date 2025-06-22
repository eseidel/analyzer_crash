import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
import 'package:github/model/repos/update_request_security_and_analysis_secret_scanning.dart';
@immutable
class Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning {
    Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning(
        {  this.status,
         }
    );

    factory Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning(
            status: json['status'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning.fromJson(json);
    }

    final  String? status;


    Map<String, dynamic> toJson() {
        return {
            'status': status,
        };
    }

    @override
    int get hashCode =>
          status.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateRequestSecurityAndAnalysisSecretScanning
            && status == other.status
        ;
    }
}
