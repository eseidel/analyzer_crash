import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
import 'package:github/model/org-private-registry-configuration_registry_type.dart';
enum Org-private-registry-configurationRegistryType {
    mavenRepository._('maven_repository'),
    nugetFeed._('nuget_feed'),
    goproxyServer._('goproxy_server'),
    ;

    const Org-private-registry-configurationRegistryType._(this.value);

    factory Org-private-registry-configurationRegistryType.fromJson(String json) {
        return Org-private-registry-configurationRegistryType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-private-registry-configurationRegistryType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configurationRegistryType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configurationRegistryType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
