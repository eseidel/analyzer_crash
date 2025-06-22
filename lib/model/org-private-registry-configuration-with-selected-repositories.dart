import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_visibility.dart';
@immutable
class Org-private-registry-configuration-with-selected-repositories {
    Org-private-registry-configuration-with-selected-repositories(
        { required this.name,required this.registry_type, this.username,required this.visibility, this.selected_repository_ids = const [],required this.created_at,required this.updated_at,
         }
    );

    factory Org-private-registry-configuration-with-selected-repositories.fromJson(Map<String, dynamic>
        json) {
        return Org-private-registry-configuration-with-selected-repositories(
            name: json['name'] as String ,
            registry_type: Org-private-registry-configuration-with-selected-repositoriesRegistryType.fromJson(json['registry_type'] as String) ,
            username: json['username'] as String? ,
            visibility: Org-private-registry-configuration-with-selected-repositoriesVisibility.fromJson(json['visibility'] as String) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configuration-with-selected-repositories? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configuration-with-selected-repositories.fromJson(json);
    }

    final String  name;
    final Org-private-registry-configuration-with-selected-repositoriesRegistryType  registry_type;
    final  String? username;
    final Org-private-registry-configuration-with-selected-repositoriesVisibility  visibility;
    final  List<int>? selected_repository_ids;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'registry_type': registry_type.toJson(),
            'username': username,
            'visibility': visibility.toJson(),
            'selected_repository_ids': selected_repository_ids,
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
          selected_repository_ids,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-private-registry-configuration-with-selected-repositories
            && name == other.name
            && registry_type == other.registry_type
            && username == other.username
            && visibility == other.visibility
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
