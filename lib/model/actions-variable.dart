import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-variable.dart';
import 'package:github/model/actions-variable.dart';
@immutable
class Actions-variable {
    Actions-variable(
        { required this.name,required this.value,required this.created_at,required this.updated_at,
         }
    );

    factory Actions-variable.fromJson(Map<String, dynamic>
        json) {
        return Actions-variable(
            name: json['name'] as String ,
            value: json['value'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-variable? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-variable.fromJson(json);
    }

    final String  name;
    final String  value;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'value': value,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          value,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-variable
            && name == other.name
            && value == other.value
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
