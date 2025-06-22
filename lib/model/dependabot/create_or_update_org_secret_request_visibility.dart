import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request_visibility.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request_visibility.dart';
enum Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility._(this.value);

    factory Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility.fromJson(String json) {
        return Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;createOrUpdateOrgSecretRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
