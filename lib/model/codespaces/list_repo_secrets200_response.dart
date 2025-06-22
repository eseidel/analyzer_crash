import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/list_repo_secrets200_response.dart';
import 'package:github/model/repo-codespaces-secret.dart';
import 'package:github/model/codespaces/list_repo_secrets200_response.dart';
import 'package:github/model/repo-codespaces-secret.dart';
@immutable
class Codespaces&#x2F;listRepoSecrets200Response {
    Codespaces&#x2F;listRepoSecrets200Response(
        { required this.total_count, this.secrets = const [],
         }
    );

    factory Codespaces&#x2F;listRepoSecrets200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;listRepoSecrets200Response(
            total_count: (json['total_count'] as int).toInt() ,
            secrets: (json['secrets'] as List).map<Repo-codespaces-secret>((e) => Repo-codespaces-secret.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;listRepoSecrets200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;listRepoSecrets200Response.fromJson(json);
    }

    final int  total_count;
    final List<Repo-codespaces-secret>  secrets;


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
        return other is Codespaces&#x2F;listRepoSecrets200Response
            && total_count == other.total_count
            && listsEqual(secrets, other.secrets)
        ;
    }
}
