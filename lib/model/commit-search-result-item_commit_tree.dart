import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
@immutable
class Commit-search-result-itemCommitTree {
    Commit-search-result-itemCommitTree(
        { required this.sha,required this.url,
         }
    );

    factory Commit-search-result-itemCommitTree.fromJson(Map<String, dynamic>
        json) {
        return Commit-search-result-itemCommitTree(
            sha: json['sha'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-search-result-itemCommitTree? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-search-result-itemCommitTree.fromJson(json);
    }

    final String  sha;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-search-result-itemCommitTree
            && sha == other.sha
            && url == other.url
        ;
    }
}
