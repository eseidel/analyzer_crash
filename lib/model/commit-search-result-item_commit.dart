import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
@immutable
class Commit-search-result-itemCommit {
    Commit-search-result-itemCommit(
        { required this.author,required this.committer,required this.comment_count,required this.message,required this.tree,required this.url, this.verification,
         }
    );

    factory Commit-search-result-itemCommit.fromJson(Map<String, dynamic>
        json) {
        return Commit-search-result-itemCommit(
            author: Commit-search-result-itemCommitAuthor.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Nullable-git-user.fromJson(json['committer'] as Map<String, dynamic>) ,
            comment_count: (json['comment_count'] as int).toInt() ,
            message: json['message'] as String ,
            tree: Commit-search-result-itemCommitTree.fromJson(json['tree'] as Map<String, dynamic>) ,
            url: json['url'] as String ,
            verification: Verification.maybeFromJson(json['verification'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-search-result-itemCommit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-search-result-itemCommit.fromJson(json);
    }

    final Commit-search-result-itemCommitAuthor  author;
    final Nullable-git-user  committer;
    final int  comment_count;
    final String  message;
    final Commit-search-result-itemCommitTree  tree;
    final String  url;
    final  Verification? verification;


    Map<String, dynamic> toJson() {
        return {
            'author': author.toJson(),
            'committer': committer.toJson(),
            'comment_count': comment_count,
            'message': message,
            'tree': tree.toJson(),
            'url': url,
            'verification': verification?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          author,
          committer,
          comment_count,
          message,
          tree,
          url,
          verification,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-search-result-itemCommit
            && author == other.author
            && committer == other.committer
            && comment_count == other.comment_count
            && message == other.message
            && tree == other.tree
            && url == other.url
            && verification == other.verification
        ;
    }
}
