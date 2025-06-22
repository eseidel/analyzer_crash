import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/delete_codespaces_access_users_request.dart';
import 'package:github/model/codespaces/delete_codespaces_access_users_request.dart';
@immutable
class Codespaces&#x2F;deleteCodespacesAccessUsersRequest {
    Codespaces&#x2F;deleteCodespacesAccessUsersRequest(
        {  this.selected_usernames = const [],
         }
    );

    factory Codespaces&#x2F;deleteCodespacesAccessUsersRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;deleteCodespacesAccessUsersRequest(
            selected_usernames: (json['selected_usernames'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;deleteCodespacesAccessUsersRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;deleteCodespacesAccessUsersRequest.fromJson(json);
    }

    final List<String>  selected_usernames;


    Map<String, dynamic> toJson() {
        return {
            'selected_usernames': selected_usernames,
        };
    }

    @override
    int get hashCode =>
          selected_usernames.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;deleteCodespacesAccessUsersRequest
            && listsEqual(selected_usernames, other.selected_usernames)
        ;
    }
}
