import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tree_request_tree_inner.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
import 'package:github/model/git/create_tree_request_tree_inner.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
@immutable
class Git&#x2F;createTreeRequestTreeInner {
    Git&#x2F;createTreeRequestTreeInner(
        {  this.path, this.mode, this.type, this.sha, this.content,
         }
    );

    factory Git&#x2F;createTreeRequestTreeInner.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createTreeRequestTreeInner(
            path: json['path'] as String? ,
            mode: Git/createTreeRequestTreeInnerMode.maybeFromJson(json['mode'] as String?) ,
            type: Git/createTreeRequestTreeInnerType.maybeFromJson(json['type'] as String?) ,
            sha: json['sha'] as String? ,
            content: json['content'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTreeRequestTreeInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTreeRequestTreeInner.fromJson(json);
    }

    final  String? path;
    final  Git/createTreeRequestTreeInnerMode? mode;
    final  Git/createTreeRequestTreeInnerType? type;
    final  String? sha;
    final  String? content;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'mode': mode?.toJson(),
            'type': type?.toJson(),
            'sha': sha,
            'content': content,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          mode,
          type,
          sha,
          content,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createTreeRequestTreeInner
            && path == other.path
            && mode == other.mode
            && type == other.type
            && sha == other.sha
            && content == other.content
        ;
    }
}
