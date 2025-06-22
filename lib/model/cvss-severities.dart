import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/cvss-severities.dart';
import 'package:github/model/cvss-severities_cvss_v3.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
@immutable
class Cvss-severities {
    Cvss-severities(
        {  this.cvss_v3, this.cvss_v4,
         }
    );

    factory Cvss-severities.fromJson(Map<String, dynamic>
        json) {
        return Cvss-severities(
            cvss_v3: Cvss-severitiesCvssV3.maybeFromJson(json['cvss_v3'] as Map<String, dynamic>?) ,
            cvss_v4: Cvss-severitiesCvssV4.maybeFromJson(json['cvss_v4'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Cvss-severities? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Cvss-severities.fromJson(json);
    }

    final  Cvss-severitiesCvssV3? cvss_v3;
    final  Cvss-severitiesCvssV4? cvss_v4;


    Map<String, dynamic> toJson() {
        return {
            'cvss_v3': cvss_v3?.toJson(),
            'cvss_v4': cvss_v4?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          cvss_v3,
          cvss_v4,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Cvss-severities
            && cvss_v3 == other.cvss_v3
            && cvss_v4 == other.cvss_v4
        ;
    }
}
