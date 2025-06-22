import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_repo_permissions_in_org_request.dart';
import 'package:github/model/teams/add_or_update_repo_permissions_in_org_request.dart';
@immutable
class Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest {
    Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest(
        {  this.permission,
         }
    );

    factory Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest(
            permission: json['permission'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest.fromJson(json);
    }

    final  String? permission;


    Map<String, dynamic> toJson() {
        return {
            'permission': permission,
        };
    }

    @override
    int get hashCode =>
          permission.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;addOrUpdateRepoPermissionsInOrgRequest
            && permission == other.permission
        ;
    }
}
