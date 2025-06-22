import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_environment_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
import 'package:github/model/actions/list_environment_secrets200_response.dart';
import 'package:github/model/actions-secret.dart';
@immutable
class Actions&#x2F;listEnvironmentSecrets200Response {
    Actions&#x2F;listEnvironmentSecrets200Response(
        { required this.total_count, this.secrets = const [],
         }
    );

    factory Actions&#x2F;listEnvironmentSecrets200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listEnvironmentSecrets200Response(
            total_count: (json['total_count'] as int).toInt() ,
            secrets: (json['secrets'] as List).map<Actions-secret>((e) => Actions-secret.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listEnvironmentSecrets200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listEnvironmentSecrets200Response.fromJson(json);
    }

    final int  total_count;
    final List<Actions-secret>  secrets;


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
        return other is Actions&#x2F;listEnvironmentSecrets200Response
            && total_count == other.total_count
            && listsEqual(secrets, other.secrets)
        ;
    }
}
