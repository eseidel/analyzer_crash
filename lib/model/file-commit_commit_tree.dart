import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_tree.dart';
@immutable
class File-commitCommitTree {
    File-commitCommitTree(
        {  this.url, this.sha,
         }
    );

    factory File-commitCommitTree.fromJson(Map<String, dynamic>
        json) {
        return File-commitCommitTree(
            url: json['url'] as String? ,
            sha: json['sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitCommitTree? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitCommitTree.fromJson(json);
    }

    final  String? url;
    final  String? sha;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitCommitTree
            && url == other.url
            && sha == other.sha
        ;
    }
}
