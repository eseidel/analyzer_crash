import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
@immutable
class Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner {
    Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner(
        { required this.path, this.name, this.display_name,
         }
    );

    factory Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner(
            path: json['path'] as String ,
            name: json['name'] as String? ,
            display_name: json['display_name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner.fromJson(json);
    }

    final String  path;
    final  String? name;
    final  String? display_name;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'name': name,
            'display_name': display_name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          name,
          display_name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner
            && path == other.path
            && name == other.name
            && display_name == other.display_name
        ;
    }
}
