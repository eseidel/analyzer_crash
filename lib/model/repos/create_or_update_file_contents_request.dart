import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_file_contents_request.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_committer.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_author.dart';
import 'package:github/model/repos/create_or_update_file_contents_request.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_committer.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_author.dart';
@immutable
class Repos&#x2F;createOrUpdateFileContentsRequest {
    Repos&#x2F;createOrUpdateFileContentsRequest(
        { required this.message,required this.content, this.sha, this.branch, this.committer, this.author,
         }
    );

    factory Repos&#x2F;createOrUpdateFileContentsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createOrUpdateFileContentsRequest(
            message: json['message'] as String ,
            content: json['content'] as String ,
            sha: json['sha'] as String? ,
            branch: json['branch'] as String? ,
            committer: Repos/createOrUpdateFileContentsRequestCommitter.maybeFromJson(json['committer'] as Map<String, dynamic>?) ,
            author: Repos/createOrUpdateFileContentsRequestAuthor.maybeFromJson(json['author'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateFileContentsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateFileContentsRequest.fromJson(json);
    }

    final String  message;
    final String  content;
    final  String? sha;
    final  String? branch;
    final  Repos/createOrUpdateFileContentsRequestCommitter? committer;
    final  Repos/createOrUpdateFileContentsRequestAuthor? author;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'content': content,
            'sha': sha,
            'branch': branch,
            'committer': committer?.toJson(),
            'author': author?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          content,
          sha,
          branch,
          committer,
          author,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createOrUpdateFileContentsRequest
            && message == other.message
            && content == other.content
            && sha == other.sha
            && branch == other.branch
            && committer == other.committer
            && author == other.author
        ;
    }
}
