import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-create-issue-type.dart';
import 'package:github/model/organization-create-issue-type_color.dart';
import 'package:github/model/organization-create-issue-type.dart';
import 'package:github/model/organization-create-issue-type_color.dart';
@immutable
class Organization-create-issue-type {
    Organization-create-issue-type(
        { required this.name,required this.is_enabled, this.description, this.color,
         }
    );

    factory Organization-create-issue-type.fromJson(Map<String, dynamic>
        json) {
        return Organization-create-issue-type(
            name: json['name'] as String ,
            is_enabled: (json['is_enabled'] as bool) ,
            description: json['description'] as String? ,
            color: Organization-create-issue-typeColor.maybeFromJson(json['color'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-create-issue-type? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-create-issue-type.fromJson(json);
    }

    final String  name;
    final bool  is_enabled;
    final  String? description;
    final  Organization-create-issue-typeColor? color;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'is_enabled': is_enabled,
            'description': description,
            'color': color?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          is_enabled,
          description,
          color,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-create-issue-type
            && name == other.name
            && is_enabled == other.is_enabled
            && description == other.description
            && color == other.color
        ;
    }
}
