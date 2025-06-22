import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/create_for_authenticated_user_request.dart';
import 'package:github/model/projects/create_for_authenticated_user_request.dart';
@immutable
class Projects&#x2F;createForAuthenticatedUserRequest {
    Projects&#x2F;createForAuthenticatedUserRequest(
        { required this.name, this.body,
         }
    );

    factory Projects&#x2F;createForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Projects&#x2F;createForAuthenticatedUserRequest(
            name: json['name'] as String ,
            body: json['body'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;createForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;createForAuthenticatedUserRequest.fromJson(json);
    }

    final String  name;
    final  String? body;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'body': body,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          body,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Projects&#x2F;createForAuthenticatedUserRequest
            && name == other.name
            && body == other.body
        ;
    }
}
