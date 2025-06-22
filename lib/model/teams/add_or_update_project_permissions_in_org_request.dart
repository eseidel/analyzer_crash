import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request_permission.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org_request_permission.dart';
@immutable
class Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest {
    Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest(
        {  this.permission,
         }
    );

    factory Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest(
            permission: Teams/addOrUpdateProjectPermissionsInOrgRequestPermission.maybeFromJson(json['permission'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest.fromJson(json);
    }

    final  Teams/addOrUpdateProjectPermissionsInOrgRequestPermission? permission;


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
        return other is Teams&#x2F;addOrUpdateProjectPermissionsInOrgRequest
            && permission == other.permission
        ;
    }
}
