import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_cwes_inner.dart';
@immutable
class Dependabot-alert-security-advisoryCwesInner {
    Dependabot-alert-security-advisoryCwesInner(
        { required this.cwe_id,required this.name,
         }
    );

    factory Dependabot-alert-security-advisoryCwesInner.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-security-advisoryCwesInner(
            cwe_id: json['cwe_id'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisoryCwesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisoryCwesInner.fromJson(json);
    }

    final String  cwe_id;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'cwe_id': cwe_id,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          cwe_id,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-security-advisoryCwesInner
            && cwe_id == other.cwe_id
            && name == other.name
        ;
    }
}
