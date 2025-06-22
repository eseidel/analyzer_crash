import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
@immutable
class Org-private-registry-configuration {
    Org-private-registry-configuration(
        { required this.name,required this.registry_type, this.username,required this.visibility,required this.created_at,required this.updated_at,
         }
    );

    factory Org-private-registry-configuration.fromJson(Map<String, dynamic>
        json) {
        return Org-private-registry-configuration(
            name: json['name'] as String ,
            registry_type: Org-private-registry-configurationRegistryType.fromJson(json['registry_type'] as String) ,
            username: json['username'] as String? ,
            visibility: Org-private-registry-configurationVisibility.fromJson(json['visibility'] as String) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configuration? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configuration.fromJson(json);
    }

    final String  name;
    final Org-private-registry-configurationRegistryType  registry_type;
    final  String? username;
    final Org-private-registry-configurationVisibility  visibility;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'registry_type': registry_type.toJson(),
            'username': username,
            'visibility': visibility.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          registry_type,
          username,
          visibility,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-private-registry-configuration
            && name == other.name
            && registry_type == other.registry_type
            && username == other.username
            && visibility == other.visibility
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
