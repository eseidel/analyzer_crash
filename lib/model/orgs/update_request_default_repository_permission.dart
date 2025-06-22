import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_request_default_repository_permission.dart';
import 'package:github/model/orgs/update_request_default_repository_permission.dart';
enum Orgs&#x2F;updateRequestDefaultRepositoryPermission {
    read._('read'),
    write._('write'),
    admin._('admin'),
    none._('none'),
    ;

    const Orgs&#x2F;updateRequestDefaultRepositoryPermission._(this.value);

    factory Orgs&#x2F;updateRequestDefaultRepositoryPermission.fromJson(String json) {
        return Orgs&#x2F;updateRequestDefaultRepositoryPermission.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;updateRequestDefaultRepositoryPermission value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateRequestDefaultRepositoryPermission? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateRequestDefaultRepositoryPermission.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
