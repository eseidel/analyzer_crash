import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/publish_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/publish_for_authenticated_user_request.dart';
@immutable
class Codespaces&#x2F;publishForAuthenticatedUserRequest {
    Codespaces&#x2F;publishForAuthenticatedUserRequest(
        {  this.name, this.private = false,
         }
    );

    factory Codespaces&#x2F;publishForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;publishForAuthenticatedUserRequest(
            name: json['name'] as String? ,
            private: (json['private'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;publishForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;publishForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? name;
    final  bool? private;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'private': private,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          private,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;publishForAuthenticatedUserRequest
            && name == other.name
            && private == other.private
        ;
    }
}
