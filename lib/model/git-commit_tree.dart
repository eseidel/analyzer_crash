import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_tree.dart';
@immutable
class Git-commitTree {
    Git-commitTree(
        { required this.sha,required this.url,
         }
    );

    factory Git-commitTree.fromJson(Map<String, dynamic>
        json) {
        return Git-commitTree(
            sha: json['sha'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-commitTree? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-commitTree.fromJson(json);
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
        return other is Git-commitTree
            && sha == other.sha
            && url == other.url
        ;
    }
}
