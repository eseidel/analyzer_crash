import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private_registries/list_org_private_registries200_response.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
import 'package:github/model/private_registries/list_org_private_registries200_response.dart';
import 'package:github/model/org-private-registry-configuration.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_visibility.dart';
@immutable
class PrivateRegistries&#x2F;listOrgPrivateRegistries200Response {
    PrivateRegistries&#x2F;listOrgPrivateRegistries200Response(
        { required this.total_count, this.configurations = const [],
         }
    );

    factory PrivateRegistries&#x2F;listOrgPrivateRegistries200Response.fromJson(Map<String, dynamic>
        json) {
        return PrivateRegistries&#x2F;listOrgPrivateRegistries200Response(
            total_count: (json['total_count'] as int).toInt() ,
            configurations: (json['configurations'] as List).map<Org-private-registry-configuration>((e) => Org-private-registry-configuration.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static PrivateRegistries&#x2F;listOrgPrivateRegistries200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return PrivateRegistries&#x2F;listOrgPrivateRegistries200Response.fromJson(json);
    }

    final int  total_count;
    final List<Org-private-registry-configuration>  configurations;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'configurations': configurations.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          configurations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is PrivateRegistries&#x2F;listOrgPrivateRegistries200Response
            && total_count == other.total_count
            && listsEqual(configurations, other.configurations)
        ;
    }
}
