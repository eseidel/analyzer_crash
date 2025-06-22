import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
import 'package:github/model/cvss-severities_cvss_v4.dart';
@immutable
class Cvss-severitiesCvssV4 {
    Cvss-severitiesCvssV4(
        { required this.vector_string,required this.score,
         }
    );

    factory Cvss-severitiesCvssV4.fromJson(Map<String, dynamic>
        json) {
        return Cvss-severitiesCvssV4(
            vector_string: json['vector_string'] as String ,
            score: (json['score'] as num).toDouble() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Cvss-severitiesCvssV4? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Cvss-severitiesCvssV4.fromJson(json);
    }

    final String  vector_string;
    final double  score;


    Map<String, dynamic> toJson() {
        return {
            'vector_string': vector_string,
            'score': score,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          vector_string,
          score,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Cvss-severitiesCvssV4
            && vector_string == other.vector_string
            && score == other.score
        ;
    }
}
