import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_request_members_allowed_repository_creation_type.dart';
import 'package:github/model/orgs/update_request_members_allowed_repository_creation_type.dart';
enum Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType {
    all._('all'),
    private._('private'),
    none._('none'),
    ;

    const Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType._(this.value);

    factory Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType.fromJson(String json) {
        return Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateRequestMembersAllowedRepositoryCreationType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
