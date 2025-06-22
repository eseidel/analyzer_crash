import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-set-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-set-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
@immutable
class Actions-set-default-workflow-permissions {
    Actions-set-default-workflow-permissions(
        {  this.default_workflow_permissions, this.can_approve_pull_request_reviews,
         }
    );

    factory Actions-set-default-workflow-permissions.fromJson(Map<String, dynamic>
        json) {
        return Actions-set-default-workflow-permissions(
            default_workflow_permissions: Actions-default-workflow-permissions.maybeFromJson(json['default_workflow_permissions'] as String?) ,
            can_approve_pull_request_reviews: (json['can_approve_pull_request_reviews'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-set-default-workflow-permissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-set-default-workflow-permissions.fromJson(json);
    }

    final  Actions-default-workflow-permissions? default_workflow_permissions;
    final  bool? can_approve_pull_request_reviews;


    Map<String, dynamic> toJson() {
        return {
            'default_workflow_permissions': default_workflow_permissions?.toJson(),
            'can_approve_pull_request_reviews': can_approve_pull_request_reviews,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          default_workflow_permissions,
          can_approve_pull_request_reviews,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-set-default-workflow-permissions
            && default_workflow_permissions == other.default_workflow_permissions
            && can_approve_pull_request_reviews == other.can_approve_pull_request_reviews
        ;
    }
}
