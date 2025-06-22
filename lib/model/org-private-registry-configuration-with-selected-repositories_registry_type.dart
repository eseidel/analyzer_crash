import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
import 'package:github/model/org-private-registry-configuration-with-selected-repositories_registry_type.dart';
enum Org-private-registry-configuration-with-selected-repositoriesRegistryType {
    mavenRepository._('maven_repository'),
    nugetFeed._('nuget_feed'),
    goproxyServer._('goproxy_server'),
    ;

    const Org-private-registry-configuration-with-selected-repositoriesRegistryType._(this.value);

    factory Org-private-registry-configuration-with-selected-repositoriesRegistryType.fromJson(String json) {
        return Org-private-registry-configuration-with-selected-repositoriesRegistryType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Org-private-registry-configuration-with-selected-repositoriesRegistryType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-private-registry-configuration-with-selected-repositoriesRegistryType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Org-private-registry-configuration-with-selected-repositoriesRegistryType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
