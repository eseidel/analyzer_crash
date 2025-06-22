import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/organization-actions-variable.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
@immutable
class Organization-actions-variable {
    Organization-actions-variable(
        { required this.name,required this.value,required this.created_at,required this.updated_at,required this.visibility, this.selected_repositories_url,
         }
    );

    factory Organization-actions-variable.fromJson(Map<String, dynamic>
        json) {
        return Organization-actions-variable(
            name: json['name'] as String ,
            value: json['value'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            visibility: Organization-actions-variableVisibility.fromJson(json['visibility'] as String) ,
            selected_repositories_url: json['selected_repositories_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-actions-variable? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-actions-variable.fromJson(json);
    }

    final String  name;
    final String  value;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Organization-actions-variableVisibility  visibility;
    final  String? selected_repositories_url;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'value': value,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'visibility': visibility.toJson(),
            'selected_repositories_url': selected_repositories_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          value,
          created_at,
          updated_at,
          visibility,
          selected_repositories_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-actions-variable
            && name == other.name
            && value == other.value
            && created_at == other.created_at
            && updated_at == other.updated_at
            && visibility == other.visibility
            && selected_repositories_url == other.selected_repositories_url
        ;
    }
}
