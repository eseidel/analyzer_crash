import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
import 'package:github/model/codespaces-org-secret.dart';
import 'package:github/model/codespaces-org-secret_visibility.dart';
@immutable
class Codespaces-org-secret {
    Codespaces-org-secret(
        { required this.name,required this.created_at,required this.updated_at,required this.visibility, this.selected_repositories_url,
         }
    );

    factory Codespaces-org-secret.fromJson(Map<String, dynamic>
        json) {
        return Codespaces-org-secret(
            name: json['name'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            visibility: Codespaces-org-secretVisibility.fromJson(json['visibility'] as String) ,
            selected_repositories_url: json['selected_repositories_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces-org-secret? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces-org-secret.fromJson(json);
    }

    final String  name;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Codespaces-org-secretVisibility  visibility;
    final  String? selected_repositories_url;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
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
          created_at,
          updated_at,
          visibility,
          selected_repositories_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces-org-secret
            && name == other.name
            && created_at == other.created_at
            && updated_at == other.updated_at
            && visibility == other.visibility
            && selected_repositories_url == other.selected_repositories_url
        ;
    }
}
