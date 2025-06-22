import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
@immutable
class Security-and-analysisCodeSecurity {
    Security-and-analysisCodeSecurity(
        {  this.status,
         }
    );

    factory Security-and-analysisCodeSecurity.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisCodeSecurity(
            status: Security-and-analysisCodeSecurityStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisCodeSecurity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisCodeSecurity.fromJson(json);
    }

    final  Security-and-analysisCodeSecurityStatus? status;


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
        return other is Security-and-analysisCodeSecurity
            && status == other.status
        ;
    }
}
