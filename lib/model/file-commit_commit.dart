import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
@immutable
class File-commitCommit {
    File-commitCommit(
        {  this.sha, this.node_id, this.url, this.html_url, this.author, this.committer, this.message, this.tree, this.parents = const [], this.verification,
         }
    );

    factory File-commitCommit.fromJson(Map<String, dynamic>
        json) {
        return File-commitCommit(
            sha: json['sha'] as String? ,
            node_id: json['node_id'] as String? ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            author: File-commitCommitAuthor.maybeFromJson(json['author'] as Map<String, dynamic>?) ,
            committer: File-commitCommitCommitter.maybeFromJson(json['committer'] as Map<String, dynamic>?) ,
            message: json['message'] as String? ,
            tree: File-commitCommitTree.maybeFromJson(json['tree'] as Map<String, dynamic>?) ,
            parents: (json['parents'] as List?)?.map<File-commitCommitParentsInner>((e) => File-commitCommitParentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            verification: File-commitCommitVerification.maybeFromJson(json['verification'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitCommit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitCommit.fromJson(json);
    }

    final  String? sha;
    final  String? node_id;
    final  String? url;
    final  String? html_url;
    final  File-commitCommitAuthor? author;
    final  File-commitCommitCommitter? committer;
    final  String? message;
    final  File-commitCommitTree? tree;
    final  List<File-commitCommitParentsInner>? parents;
    final  File-commitCommitVerification? verification;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'node_id': node_id,
            'url': url,
            'html_url': html_url,
            'author': author?.toJson(),
            'committer': committer?.toJson(),
            'message': message,
            'tree': tree?.toJson(),
            'parents': parents?.map((e) => e.toJson()).toList(),
            'verification': verification?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          node_id,
          url,
          html_url,
          author,
          committer,
          message,
          tree,
          parents,
          verification,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitCommit
            && sha == other.sha
            && node_id == other.node_id
            && url == other.url
            && html_url == other.html_url
            && author == other.author
            && committer == other.committer
            && message == other.message
            && tree == other.tree
            && listsEqual(parents, other.parents)
            && verification == other.verification
        ;
    }
}
