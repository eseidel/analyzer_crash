import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/delete_file_request.dart';
import 'package:github/model/repos/delete_file_request_committer.dart';
import 'package:github/model/repos/delete_file_request_author.dart';
import 'package:github/model/repos/delete_file_request.dart';
import 'package:github/model/repos/delete_file_request_committer.dart';
import 'package:github/model/repos/delete_file_request_author.dart';
@immutable
class Repos&#x2F;deleteFileRequest {
    Repos&#x2F;deleteFileRequest(
        { required this.message,required this.sha, this.branch, this.committer, this.author,
         }
    );

    factory Repos&#x2F;deleteFileRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;deleteFileRequest(
            message: json['message'] as String ,
            sha: json['sha'] as String ,
            branch: json['branch'] as String? ,
            committer: Repos/deleteFileRequestCommitter.maybeFromJson(json['committer'] as Map<String, dynamic>?) ,
            author: Repos/deleteFileRequestAuthor.maybeFromJson(json['author'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;deleteFileRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;deleteFileRequest.fromJson(json);
    }

    final String  message;
    final String  sha;
    final  String? branch;
    final  Repos/deleteFileRequestCommitter? committer;
    final  Repos/deleteFileRequestAuthor? author;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
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
          sha,
          branch,
          committer,
          author,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;deleteFileRequest
            && message == other.message
            && sha == other.sha
            && branch == other.branch
            && committer == other.committer
            && author == other.author
        ;
    }
}
