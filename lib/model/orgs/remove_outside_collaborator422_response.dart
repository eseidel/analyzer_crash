import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/remove_outside_collaborator422_response.dart';
import 'package:github/model/orgs/remove_outside_collaborator422_response.dart';
@immutable
class Orgs&#x2F;removeOutsideCollaborator422Response {
    Orgs&#x2F;removeOutsideCollaborator422Response(
        {  this.message, this.documentation_url,
         }
    );

    factory Orgs&#x2F;removeOutsideCollaborator422Response.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;removeOutsideCollaborator422Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;removeOutsideCollaborator422Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;removeOutsideCollaborator422Response.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;removeOutsideCollaborator422Response
            && message == other.message
            && documentation_url == other.documentation_url
        ;
    }
}
