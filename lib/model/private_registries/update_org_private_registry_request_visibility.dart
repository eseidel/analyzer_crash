import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private_registries/update_org_private_registry_request_visibility.dart';
import 'package:github/model/private_registries/update_org_private_registry_request_visibility.dart';
enum PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility._(this.value);

    factory PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility.fromJson(String json) {
        return PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return PrivateRegistries&#x2F;updateOrgPrivateRegistryRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
