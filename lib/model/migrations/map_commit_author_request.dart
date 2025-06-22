import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/map_commit_author_request.dart';
import 'package:github/model/migrations/map_commit_author_request.dart';
@immutable
class Migrations&#x2F;mapCommitAuthorRequest {
    Migrations&#x2F;mapCommitAuthorRequest(
        {  this.email, this.name,
         }
    );

    factory Migrations&#x2F;mapCommitAuthorRequest.fromJson(Map<String, dynamic>
        json) {
        return Migrations&#x2F;mapCommitAuthorRequest(
            email: json['email'] as String? ,
            name: json['name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;mapCommitAuthorRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;mapCommitAuthorRequest.fromJson(json);
    }

    final  String? email;
    final  String? name;


    Map<String, dynamic> toJson() {
        return {
            'email': email,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          email,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migrations&#x2F;mapCommitAuthorRequest
            && email == other.email
            && name == other.name
        ;
    }
}
