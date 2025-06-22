import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
@immutable
class Code-scanning-variant-analysis-repository {
    Code-scanning-variant-analysis-repository(
        { required this.id,required this.name,required this.full_name,required this.private,required this.stargazers_count,required this.updated_at,
         }
    );

    factory Code-scanning-variant-analysis-repository.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysis-repository(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            full_name: json['full_name'] as String ,
            private: (json['private'] as bool) ,
            stargazers_count: (json['stargazers_count'] as int).toInt() ,
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis-repository.fromJson(json);
    }

    final int  id;
    final String  name;
    final String  full_name;
    final bool  private;
    final int  stargazers_count;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'full_name': full_name,
            'private': private,
            'stargazers_count': stargazers_count,
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          full_name,
          private,
          stargazers_count,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysis-repository
            && id == other.id
            && name == other.name
            && full_name == other.full_name
            && private == other.private
            && stargazers_count == other.stargazers_count
            && updated_at == other.updated_at
        ;
    }
}
