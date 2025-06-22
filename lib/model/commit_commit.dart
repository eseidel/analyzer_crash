import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
@immutable
class CommitCommit {
    CommitCommit(
        { required this.url,required this.author,required this.committer,required this.message,required this.comment_count,required this.tree, this.verification,
         }
    );

    factory CommitCommit.fromJson(Map<String, dynamic>
        json) {
        return CommitCommit(
            url: json['url'] as String ,
            author: Nullable-git-user.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Nullable-git-user.fromJson(json['committer'] as Map<String, dynamic>) ,
            message: json['message'] as String ,
            comment_count: (json['comment_count'] as int).toInt() ,
            tree: CommitCommitTree.fromJson(json['tree'] as Map<String, dynamic>) ,
            verification: Verification.maybeFromJson(json['verification'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static CommitCommit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return CommitCommit.fromJson(json);
    }

    final String  url;
    final Nullable-git-user  author;
    final Nullable-git-user  committer;
    final String  message;
    final int  comment_count;
    final CommitCommitTree  tree;
    final  Verification? verification;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'author': author.toJson(),
            'committer': committer.toJson(),
            'message': message,
            'comment_count': comment_count,
            'tree': tree.toJson(),
            'verification': verification?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          author,
          committer,
          message,
          comment_count,
          tree,
          verification,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is CommitCommit
            && url == other.url
            && author == other.author
            && committer == other.committer
            && message == other.message
            && comment_count == other.comment_count
            && tree == other.tree
            && verification == other.verification
        ;
    }
}
