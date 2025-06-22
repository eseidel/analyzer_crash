import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-secret.dart';
import 'package:github/model/dependabot-secret.dart';
@immutable
class Dependabot-secret {
    Dependabot-secret(
        { required this.name,required this.created_at,required this.updated_at,
         }
    );

    factory Dependabot-secret.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-secret(
            name: json['name'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-secret? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-secret.fromJson(json);
    }

    final String  name;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-secret
            && name == other.name
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
