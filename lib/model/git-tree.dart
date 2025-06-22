import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
@immutable
class Git-tree {
    Git-tree(
        { required this.sha, this.url,required this.truncated, this.tree = const [],
         }
    );

    factory Git-tree.fromJson(Map<String, dynamic>
        json) {
        return Git-tree(
            sha: json['sha'] as String ,
            url: json['url'] as String? ,
            truncated: (json['truncated'] as bool) ,
            tree: (json['tree'] as List).map<Git-treeTreeInner>((e) => Git-treeTreeInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-tree? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-tree.fromJson(json);
    }

    final String  sha;
    final  String? url;
    final bool  truncated;
    final List<Git-treeTreeInner>  tree;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'url': url,
            'truncated': truncated,
            'tree': tree.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          url,
          truncated,
          tree,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-tree
            && sha == other.sha
            && url == other.url
            && truncated == other.truncated
            && listsEqual(tree, other.tree)
        ;
    }
}
