import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-repo-custom-property-values.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/org-repo-custom-property-values.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
@immutable
class Org-repo-custom-property-values {
    Org-repo-custom-property-values(
        { required this.repository_id,required this.repository_name,required this.repository_full_name, this.properties = const [],
         }
    );

    factory Org-repo-custom-property-values.fromJson(Map<String, dynamic>
        json) {
        return Org-repo-custom-property-values(
            repository_id: (json['repository_id'] as int).toInt() ,
            repository_name: json['repository_name'] as String ,
            repository_full_name: json['repository_full_name'] as String ,
            properties: (json['properties'] as List).map<Custom-property-value>((e) => Custom-property-value.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-repo-custom-property-values? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-repo-custom-property-values.fromJson(json);
    }

    final int  repository_id;
    final String  repository_name;
    final String  repository_full_name;
    final List<Custom-property-value>  properties;


    Map<String, dynamic> toJson() {
        return {
            'repository_id': repository_id,
            'repository_name': repository_name,
            'repository_full_name': repository_full_name,
            'properties': properties.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_id,
          repository_name,
          repository_full_name,
          properties,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-repo-custom-property-values
            && repository_id == other.repository_id
            && repository_name == other.repository_name
            && repository_full_name == other.repository_full_name
            && listsEqual(properties, other.properties)
        ;
    }
}
