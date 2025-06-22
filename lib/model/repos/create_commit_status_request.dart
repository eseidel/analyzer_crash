import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_commit_status_request.dart';
import 'package:github/model/repos/create_commit_status_request_state.dart';
import 'package:github/model/repos/create_commit_status_request.dart';
import 'package:github/model/repos/create_commit_status_request_state.dart';
@immutable
class Repos&#x2F;createCommitStatusRequest {
    Repos&#x2F;createCommitStatusRequest(
        { required this.state, this.target_url, this.description, this.context = default,
         }
    );

    factory Repos&#x2F;createCommitStatusRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createCommitStatusRequest(
            state: Repos/createCommitStatusRequestState.fromJson(json['state'] as String) ,
            target_url: json['target_url'] as String? ,
            description: json['description'] as String? ,
            context: json['context'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createCommitStatusRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createCommitStatusRequest.fromJson(json);
    }

    final Repos/createCommitStatusRequestState  state;
    final  String? target_url;
    final  String? description;
    final  String? context;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'target_url': target_url,
            'description': description,
            'context': context,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          target_url,
          description,
          context,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createCommitStatusRequest
            && state == other.state
            && target_url == other.target_url
            && description == other.description
            && context == other.context
        ;
    }
}
