import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_registry_type.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_registry_type.dart';
enum PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType {
    mavenRepository._('maven_repository'),
    nugetFeed._('nuget_feed'),
    goproxyServer._('goproxy_server'),
    ;

    const PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType._(this.value);

    factory PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType.fromJson(String json) {
        return PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return PrivateRegistries&#x2F;createOrgPrivateRegistryRequestRegistryType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
