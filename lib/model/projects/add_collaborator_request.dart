import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/add_collaborator_request.dart';
import 'package:github/model/projects/add_collaborator_request_permission.dart';
import 'package:github/model/projects/add_collaborator_request.dart';
import 'package:github/model/projects/add_collaborator_request_permission.dart';
@immutable
class Projects&#x2F;addCollaboratorRequest {
    Projects&#x2F;addCollaboratorRequest(
        {  this.permission = Projects/addCollaboratorRequestPermission.write,
         }
    );

    factory Projects&#x2F;addCollaboratorRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;addCollaboratorRequest(
            permission: Projects/addCollaboratorRequestPermission.maybeFromJson(json['permission'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;addCollaboratorRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;addCollaboratorRequest.fromJson(json);
    }

    final  Projects/addCollaboratorRequestPermission? permission;


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
        return other is Projects&#x2F;addCollaboratorRequest
            && permission == other.permission
        ;
    }
}
