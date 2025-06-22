import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_pull_request.dart';
import 'package:github/model/codespaces/create_for_authenticated_user_request_pull_request.dart';
@immutable
class Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest {
    Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest(
        { required this.pull_request_number,required this.repository_id,
         }
    );

    factory Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest(
            pull_request_number: (json['pull_request_number'] as int).toInt() ,
            repository_id: (json['repository_id'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest.fromJson(json);
    }

    final int  pull_request_number;
    final int  repository_id;


    Map<String, dynamic> toJson() {
        return {
            'pull_request_number': pull_request_number,
            'repository_id': repository_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          pull_request_number,
          repository_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;createForAuthenticatedUserRequestPullRequest
            && pull_request_number == other.pull_request_number
            && repository_id == other.repository_id
        ;
    }
}
