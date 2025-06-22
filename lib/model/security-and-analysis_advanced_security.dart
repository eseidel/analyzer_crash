import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
@immutable
class Security-and-analysisAdvancedSecurity {
    Security-and-analysisAdvancedSecurity(
        {  this.status,
         }
    );

    factory Security-and-analysisAdvancedSecurity.fromJson(Map<String, dynamic>
        json) {
        return Security-and-analysisAdvancedSecurity(
            status: Security-and-analysisAdvancedSecurityStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-and-analysisAdvancedSecurity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-and-analysisAdvancedSecurity.fromJson(json);
    }

    final  Security-and-analysisAdvancedSecurityStatus? status;


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
        return other is Security-and-analysisAdvancedSecurity
            && status == other.status
        ;
    }
}
