import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request_permission.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_legacy_request_permission.dart';
@immutable
class Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest {
    Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest(
        {  this.permission,
         }
    );

    factory Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest(
            permission: Teams/addOrUpdateProjectPermissionsLegacyRequestPermission.maybeFromJson(json['permission'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest.fromJson(json);
    }

    final  Teams/addOrUpdateProjectPermissionsLegacyRequestPermission? permission;


    Map<String, dynamic> toJson() {
        return {
            'permission': permission?.toJson(),
        };
    }

    @override
    int get hashCode =>
          permission.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;addOrUpdateProjectPermissionsLegacyRequest
            && permission == other.permission
        ;
    }
}
