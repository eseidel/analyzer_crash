import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/update_request.dart';
import 'package:github/model/projects/update_request_organization_permission.dart';
import 'package:github/model/projects/update_request.dart';
import 'package:github/model/projects/update_request_organization_permission.dart';
@immutable
class Projects&#x2F;updateRequest {
    Projects&#x2F;updateRequest(
        {  this.name, this.body, this.state, this.organization_permission, this.private,
         }
    );

    factory Projects&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;updateRequest(
            name: json['name'] as String? ,
            body: json['body'] as String? ,
            state: json['state'] as String? ,
            organization_permission: Projects/updateRequestOrganizationPermission.maybeFromJson(json['organization_permission'] as String?) ,
            private: (json['private'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;updateRequest.fromJson(json);
    }

    final  String? name;
    final  String? body;
    final  String? state;
    final  Projects/updateRequestOrganizationPermission? organization_permission;
    final  bool? private;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'body': body,
            'state': state,
            'organization_permission': organization_permission?.toJson(),
            'private': private,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          body,
          state,
          organization_permission,
          private,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;updateRequest
            && name == other.name
            && body == other.body
            && state == other.state
            && organization_permission == other.organization_permission
            && private == other.private
        ;
    }
}
