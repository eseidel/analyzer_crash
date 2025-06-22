import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/list_org_secrets200_response.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
import 'package:github/model/dependabot/list_org_secrets200_response.dart';
import 'package:github/model/organization-dependabot-secret.dart';
import 'package:github/model/organization-dependabot-secret_visibility.dart';
@immutable
class Dependabot&#x2F;listOrgSecrets200Response {
    Dependabot&#x2F;listOrgSecrets200Response(
        { required this.total_count, this.secrets = const [],
         }
    );

    factory Dependabot&#x2F;listOrgSecrets200Response.fromJson(Map<String, dynamic>
        json) {
        return Dependabot&#x2F;listOrgSecrets200Response(
            total_count: (json['total_count'] as int).toInt() ,
            secrets: (json['secrets'] as List).map<Organization-dependabot-secret>((e) => Organization-dependabot-secret.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;listOrgSecrets200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;listOrgSecrets200Response.fromJson(json);
    }

    final int  total_count;
    final List<Organization-dependabot-secret>  secrets;


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
        return other is Dependabot&#x2F;listOrgSecrets200Response
            && total_count == other.total_count
            && listsEqual(secrets, other.secrets)
        ;
    }
}
