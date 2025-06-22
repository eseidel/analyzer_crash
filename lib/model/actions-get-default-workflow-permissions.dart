import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
import 'package:github/model/actions-get-default-workflow-permissions.dart';
import 'package:github/model/actions-default-workflow-permissions.dart';
@immutable
class Actions-get-default-workflow-permissions {
    Actions-get-default-workflow-permissions(
        { required this.default_workflow_permissions,required this.can_approve_pull_request_reviews,
         }
    );

    factory Actions-get-default-workflow-permissions.fromJson(Map<String, dynamic>
        json) {
        return Actions-get-default-workflow-permissions(
            default_workflow_permissions: Actions-default-workflow-permissions.fromJson(json['default_workflow_permissions'] as String) ,
            can_approve_pull_request_reviews: (json['can_approve_pull_request_reviews'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-get-default-workflow-permissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-get-default-workflow-permissions.fromJson(json);
    }

    final Actions-default-workflow-permissions  default_workflow_permissions;
    final bool  can_approve_pull_request_reviews;


    Map<String, dynamic> toJson() {
        return {
            'default_workflow_permissions': default_workflow_permissions.toJson(),
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
        return other is Actions-get-default-workflow-permissions
            && default_workflow_permissions == other.default_workflow_permissions
            && can_approve_pull_request_reviews == other.can_approve_pull_request_reviews
        ;
    }
}
