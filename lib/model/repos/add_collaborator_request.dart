import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/add_collaborator_request.dart';
import 'package:github/model/repos/add_collaborator_request.dart';
@immutable
class Repos&#x2F;addCollaboratorRequest {
    Repos&#x2F;addCollaboratorRequest(
        {  this.permission = push,
         }
    );

    factory Repos&#x2F;addCollaboratorRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;addCollaboratorRequest(
            permission: json['permission'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;addCollaboratorRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;addCollaboratorRequest.fromJson(json);
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
        return other is Repos&#x2F;addCollaboratorRequest
            && permission == other.permission
        ;
    }
}
