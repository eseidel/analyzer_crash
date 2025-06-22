import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_commit_request.dart';
import 'package:github/model/git/create_commit_request_author.dart';
import 'package:github/model/git/create_commit_request_committer.dart';
import 'package:github/model/git/create_commit_request.dart';
import 'package:github/model/git/create_commit_request_author.dart';
import 'package:github/model/git/create_commit_request_committer.dart';
@immutable
class Git&#x2F;createCommitRequest {
    Git&#x2F;createCommitRequest(
        { required this.message,required this.tree, this.parents = const [], this.author, this.committer, this.signature,
         }
    );

    factory Git&#x2F;createCommitRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createCommitRequest(
            message: json['message'] as String ,
            tree: json['tree'] as String ,
            parents: (json['parents'] as List?)?.cast<String>() ,
            author: Git/createCommitRequestAuthor.maybeFromJson(json['author'] as Map<String, dynamic>?) ,
            committer: Git/createCommitRequestCommitter.maybeFromJson(json['committer'] as Map<String, dynamic>?) ,
            signature: json['signature'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createCommitRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createCommitRequest.fromJson(json);
    }

    final String  message;
    final String  tree;
    final  List<String>? parents;
    final  Git/createCommitRequestAuthor? author;
    final  Git/createCommitRequestCommitter? committer;
    final  String? signature;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'tree': tree,
            'parents': parents,
            'author': author?.toJson(),
            'committer': committer?.toJson(),
            'signature': signature,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          tree,
          parents,
          author,
          committer,
          signature,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createCommitRequest
            && message == other.message
            && tree == other.tree
            && listsEqual(parents, other.parents)
            && author == other.author
            && committer == other.committer
            && signature == other.signature
        ;
    }
}
