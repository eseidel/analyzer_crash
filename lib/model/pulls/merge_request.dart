import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/merge_request.dart';
import 'package:github/model/pulls/merge_request_merge_method.dart';
import 'package:github/model/pulls/merge_request.dart';
import 'package:github/model/pulls/merge_request_merge_method.dart';
@immutable
class Pulls&#x2F;mergeRequest {
    Pulls&#x2F;mergeRequest(
        {  this.commit_title, this.commit_message, this.sha, this.merge_method,
         }
    );

    factory Pulls&#x2F;mergeRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;mergeRequest(
            commit_title: json['commit_title'] as String? ,
            commit_message: json['commit_message'] as String? ,
            sha: json['sha'] as String? ,
            merge_method: Pulls/mergeRequestMergeMethod.maybeFromJson(json['merge_method'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;mergeRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;mergeRequest.fromJson(json);
    }

    final  String? commit_title;
    final  String? commit_message;
    final  String? sha;
    final  Pulls/mergeRequestMergeMethod? merge_method;


    Map<String, dynamic> toJson() {
        return {
            'commit_title': commit_title,
            'commit_message': commit_message,
            'sha': sha,
            'merge_method': merge_method?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          commit_title,
          commit_message,
          sha,
          merge_method,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;mergeRequest
            && commit_title == other.commit_title
            && commit_message == other.commit_message
            && sha == other.sha
            && merge_method == other.merge_method
        ;
    }
}
