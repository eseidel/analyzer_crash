import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-programmatic-access-grant_permissions.dart';
import 'package:github/model/organization-programmatic-access-grant_permissions.dart';
@immutable
class Organization-programmatic-access-grantPermissions {
    Organization-programmatic-access-grantPermissions(
        {  this.organization, this.repository, this.other,
         }
    );

    factory Organization-programmatic-access-grantPermissions.fromJson(Map<String, dynamic>
        json) {
        return Organization-programmatic-access-grantPermissions(
            organization: json['organization'].map((key, value) => MapEntry(key, value as String )).toMap(),
            repository: json['repository'].map((key, value) => MapEntry(key, value as String )).toMap(),
            other: json['other'].map((key, value) => MapEntry(key, value as String )).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-programmatic-access-grantPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-programmatic-access-grantPermissions.fromJson(json);
    }

    final  Map<String, String>? organization;
    final  Map<String, String>? repository;
    final  Map<String, String>? other;


    Map<String, dynamic> toJson() {
        return {
            'organization': organization.map((key, value) => MapEntry(key, value)).toMap(),
            'repository': repository.map((key, value) => MapEntry(key, value)).toMap(),
            'other': other.map((key, value) => MapEntry(key, value)).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          organization,
          repository,
          other,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-programmatic-access-grantPermissions
            && mapsEqual(organization, other.organization)
            && mapsEqual(repository, other.repository)
            && mapsEqual(other, other.other)
        ;
    }
}
