import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tree_request.dart';
import 'package:github/model/git/create_tree_request_tree_inner.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
import 'package:github/model/git/create_tree_request.dart';
import 'package:github/model/git/create_tree_request_tree_inner.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
@immutable
class Git&#x2F;createTreeRequest {
    Git&#x2F;createTreeRequest(
        {  this.tree = const [], this.base_tree,
         }
    );

    factory Git&#x2F;createTreeRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createTreeRequest(
            tree: (json['tree'] as List).map<Git/createTreeRequestTreeInner>((e) => Git/createTreeRequestTreeInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            base_tree: json['base_tree'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTreeRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTreeRequest.fromJson(json);
    }

    final List<Git/createTreeRequestTreeInner>  tree;
    final  String? base_tree;


    Map<String, dynamic> toJson() {
        return {
            'tree': tree.map((e) => e.toJson()).toList(),
            'base_tree': base_tree,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          tree,
          base_tree,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createTreeRequest
            && listsEqual(tree, other.tree)
            && base_tree == other.base_tree
        ;
    }
}
