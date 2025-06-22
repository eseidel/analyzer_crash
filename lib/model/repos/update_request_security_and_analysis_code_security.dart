import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
import 'package:github/model/repos/update_request_security_and_analysis_code_security.dart';
@immutable
class Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity {
    Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity(
        {  this.status,
         }
    );

    factory Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity(
            status: json['status'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity.fromJson(json);
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
        return other is Repos&#x2F;updateRequestSecurityAndAnalysisCodeSecurity
            && status == other.status
        ;
    }
}
