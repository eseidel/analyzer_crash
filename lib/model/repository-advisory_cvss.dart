import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_cvss.dart';
import 'package:github/model/repository-advisory_cvss.dart';
@immutable
class Repository-advisoryCvss {
    Repository-advisoryCvss(
        { required this.vector_string,required this.score,
         }
    );

    factory Repository-advisoryCvss.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisoryCvss(
            vector_string: json['vector_string'] as String ,
            score: (json['score'] as num).toDouble() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisoryCvss? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisoryCvss.fromJson(json);
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
        return other is Repository-advisoryCvss
            && vector_string == other.vector_string
            && score == other.score
        ;
    }
}
