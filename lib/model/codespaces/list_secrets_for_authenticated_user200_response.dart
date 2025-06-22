import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/list_secrets_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
import 'package:github/model/codespaces/list_secrets_for_authenticated_user200_response.dart';
import 'package:github/model/codespaces-secret.dart';
import 'package:github/model/codespaces-secret_visibility.dart';
@immutable
class Codespaces&#x2F;listSecretsForAuthenticatedUser200Response {
    Codespaces&#x2F;listSecretsForAuthenticatedUser200Response(
        { required this.total_count, this.secrets = const [],
         }
    );

    factory Codespaces&#x2F;listSecretsForAuthenticatedUser200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;listSecretsForAuthenticatedUser200Response(
            total_count: (json['total_count'] as int).toInt() ,
            secrets: (json['secrets'] as List).map<Codespaces-secret>((e) => Codespaces-secret.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;listSecretsForAuthenticatedUser200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;listSecretsForAuthenticatedUser200Response.fromJson(json);
    }

    final int  total_count;
    final List<Codespaces-secret>  secrets;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'secrets': secrets.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          secrets,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;listSecretsForAuthenticatedUser200Response
            && total_count == other.total_count
            && listsEqual(secrets, other.secrets)
        ;
    }
}
