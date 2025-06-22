import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/set_codespaces_access_request.dart';
import 'package:github/model/codespaces/set_codespaces_access_request_visibility.dart';
import 'package:github/model/codespaces/set_codespaces_access_request.dart';
import 'package:github/model/codespaces/set_codespaces_access_request_visibility.dart';
@immutable
class Codespaces&#x2F;setCodespacesAccessRequest {
    Codespaces&#x2F;setCodespacesAccessRequest(
        { required this.visibility, this.selected_usernames = const [],
         }
    );

    factory Codespaces&#x2F;setCodespacesAccessRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;setCodespacesAccessRequest(
            visibility: Codespaces/setCodespacesAccessRequestVisibility.fromJson(json['visibility'] as String) ,
            selected_usernames: (json['selected_usernames'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;setCodespacesAccessRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;setCodespacesAccessRequest.fromJson(json);
    }

    final Codespaces/setCodespacesAccessRequestVisibility  visibility;
    final  List<String>? selected_usernames;


    Map<String, dynamic> toJson() {
        return {
            'visibility': visibility.toJson(),
            'selected_usernames': selected_usernames,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          visibility,
          selected_usernames,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;setCodespacesAccessRequest
            && visibility == other.visibility
            && listsEqual(selected_usernames, other.selected_usernames)
        ;
    }
}
