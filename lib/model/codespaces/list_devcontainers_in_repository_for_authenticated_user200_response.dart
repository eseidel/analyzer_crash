import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces/list_devcontainers_in_repository_for_authenticated_user200_response_devcontainers_inner.dart';
@immutable
class Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response {
    Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response(
        { required this.total_count, this.devcontainers = const [],
         }
    );

    factory Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response(
            total_count: (json['total_count'] as int).toInt() ,
            devcontainers: (json['devcontainers'] as List).map<Codespaces/listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner>((e) => Codespaces/listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response.fromJson(json);
    }

    final int  total_count;
    final List<Codespaces/listDevcontainersInRepositoryForAuthenticatedUser200ResponseDevcontainersInner>  devcontainers;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'devcontainers': devcontainers.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          devcontainers,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;listDevcontainersInRepositoryForAuthenticatedUser200Response
            && total_count == other.total_count
            && listsEqual(devcontainers, other.devcontainers)
        ;
    }
}
