import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-update-issue-type.dart';
import 'package:github/model/organization-update-issue-type_color.dart';
import 'package:github/model/organization-update-issue-type.dart';
import 'package:github/model/organization-update-issue-type_color.dart';
@immutable
class Organization-update-issue-type {
    Organization-update-issue-type(
        { required this.name,required this.is_enabled, this.description, this.color,
         }
    );

    factory Organization-update-issue-type.fromJson(Map<String, dynamic>
        json) {
        return Organization-update-issue-type(
            name: json['name'] as String ,
            is_enabled: (json['is_enabled'] as bool) ,
            description: json['description'] as String? ,
            color: Organization-update-issue-typeColor.maybeFromJson(json['color'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-update-issue-type? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-update-issue-type.fromJson(json);
    }

    final String  name;
    final bool  is_enabled;
    final  String? description;
    final  Organization-update-issue-typeColor? color;


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
        return other is Organization-update-issue-type
            && name == other.name
            && is_enabled == other.is_enabled
            && description == other.description
            && color == other.color
        ;
    }
}
