import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
@immutable
class Issue-type {
    Issue-type(
        { required this.id,required this.node_id,required this.name,required this.description, this.color, this.created_at, this.updated_at, this.is_enabled,
         }
    );

    factory Issue-type.fromJson(Map<String, dynamic>
        json) {
        return Issue-type(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            description: json['description'] as String ,
            color: Issue-typeColor.maybeFromJson(json['color'] as String?) ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            is_enabled: (json['is_enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-type? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-type.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  name;
    final String  description;
    final  Issue-typeColor? color;
    final  DateTime? created_at;
    final  DateTime? updated_at;
    final  bool? is_enabled;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'description': description,
            'color': color?.toJson(),
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'is_enabled': is_enabled,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          description,
          color,
          created_at,
          updated_at,
          is_enabled,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-type
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && description == other.description
            && color == other.color
            && created_at == other.created_at
            && updated_at == other.updated_at
            && is_enabled == other.is_enabled
        ;
    }
}
