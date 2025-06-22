import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/update_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/update_for_authenticated_user_request.dart';
@immutable
class Codespaces&#x2F;updateForAuthenticatedUserRequest {
    Codespaces&#x2F;updateForAuthenticatedUserRequest(
        {  this.machine, this.display_name, this.recent_folders = const [],
         }
    );

    factory Codespaces&#x2F;updateForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;updateForAuthenticatedUserRequest(
            machine: json['machine'] as String? ,
            display_name: json['display_name'] as String? ,
            recent_folders: (json['recent_folders'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;updateForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;updateForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? machine;
    final  String? display_name;
    final  List<String>? recent_folders;


    Map<String, dynamic> toJson() {
        return {
            'machine': machine,
            'display_name': display_name,
            'recent_folders': recent_folders,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          machine,
          display_name,
          recent_folders,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;updateForAuthenticatedUserRequest
            && machine == other.machine
            && display_name == other.display_name
            && listsEqual(recent_folders, other.recent_folders)
        ;
    }
}
