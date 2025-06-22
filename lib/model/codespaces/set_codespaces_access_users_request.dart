import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/set_codespaces_access_users_request.dart';
import 'package:github/model/codespaces/set_codespaces_access_users_request.dart';
@immutable
class Codespaces&#x2F;setCodespacesAccessUsersRequest {
    Codespaces&#x2F;setCodespacesAccessUsersRequest(
        {  this.selected_usernames = const [],
         }
    );

    factory Codespaces&#x2F;setCodespacesAccessUsersRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;setCodespacesAccessUsersRequest(
            selected_usernames: (json['selected_usernames'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;setCodespacesAccessUsersRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;setCodespacesAccessUsersRequest.fromJson(json);
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
        return other is Codespaces&#x2F;setCodespacesAccessUsersRequest
            && listsEqual(selected_usernames, other.selected_usernames)
        ;
    }
}
