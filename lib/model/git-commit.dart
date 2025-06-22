import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
@immutable
class Git-commit {
    Git-commit(
        { required this.sha,required this.node_id,required this.url,required this.author,required this.committer,required this.message,required this.tree, this.parents = const [],required this.verification,required this.html_url,
         }
    );

    factory Git-commit.fromJson(Map<String, dynamic>
        json) {
        return Git-commit(
            sha: json['sha'] as String ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            author: Git-commitAuthor.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Git-commitCommitter.fromJson(json['committer'] as Map<String, dynamic>) ,
            message: json['message'] as String ,
            tree: Git-commitTree.fromJson(json['tree'] as Map<String, dynamic>) ,
            parents: (json['parents'] as List).map<Git-commitParentsInner>((e) => Git-commitParentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            verification: Git-commitVerification.fromJson(json['verification'] as Map<String, dynamic>) ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-commit.fromJson(json);
    }

    final String  sha;
    final String  node_id;
    final String  url;
    final Git-commitAuthor  author;
    final Git-commitCommitter  committer;
    final String  message;
    final Git-commitTree  tree;
    final List<Git-commitParentsInner>  parents;
    final Git-commitVerification  verification;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'node_id': node_id,
            'url': url,
            'author': author.toJson(),
            'committer': committer.toJson(),
            'message': message,
            'tree': tree.toJson(),
            'parents': parents.map((e) => e.toJson()).toList(),
            'verification': verification.toJson(),
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          node_id,
          url,
          author,
          committer,
          message,
          tree,
          parents,
          verification,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-commit
            && sha == other.sha
            && node_id == other.node_id
            && url == other.url
            && author == other.author
            && committer == other.committer
            && message == other.message
            && tree == other.tree
            && listsEqual(parents, other.parents)
            && verification == other.verification
            && html_url == other.html_url
        ;
    }
}
