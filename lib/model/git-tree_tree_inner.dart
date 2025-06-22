import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-tree_tree_inner.dart';
import 'package:github/model/git-tree_tree_inner.dart';
@immutable
class Git-treeTreeInner {
    Git-treeTreeInner(
        { required this.path,required this.mode,required this.type,required this.sha, this.size, this.url,
         }
    );

    factory Git-treeTreeInner.fromJson(Map<String, dynamic>
        json) {
        return Git-treeTreeInner(
            path: json['path'] as String ,
            mode: json['mode'] as String ,
            type: json['type'] as String ,
            sha: json['sha'] as String ,
            size: (json['size'] as int?).toInt() ,
            url: json['url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-treeTreeInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-treeTreeInner.fromJson(json);
    }

    final String  path;
    final String  mode;
    final String  type;
    final String  sha;
    final  int? size;
    final  String? url;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'mode': mode,
            'type': type,
            'sha': sha,
            'size': size,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          mode,
          type,
          sha,
          size,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-treeTreeInner
            && path == other.path
            && mode == other.mode
            && type == other.type
            && sha == other.sha
            && size == other.size
            && url == other.url
        ;
    }
}
