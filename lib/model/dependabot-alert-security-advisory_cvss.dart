import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
import 'package:github/model/dependabot-alert-security-advisory_cvss.dart';
@immutable
class Dependabot-alert-security-advisoryCvss {
    Dependabot-alert-security-advisoryCvss(
        { required this.score,required this.vector_string,
         }
    );

    factory Dependabot-alert-security-advisoryCvss.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-security-advisoryCvss(
            score: (json['score'] as num).toDouble() ,
            vector_string: json['vector_string'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisoryCvss? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisoryCvss.fromJson(json);
    }

    final double  score;
    final String  vector_string;


    Map<String, dynamic> toJson() {
        return {
            'score': score,
            'vector_string': vector_string,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          score,
          vector_string,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-security-advisoryCvss
            && score == other.score
            && vector_string == other.vector_string
        ;
    }
}
