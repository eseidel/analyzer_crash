import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
@immutable
class Deployment-branch-policy-settings {
    Deployment-branch-policy-settings(
        { required this.protected_branches,required this.custom_branch_policies,
         }
    );

    factory Deployment-branch-policy-settings.fromJson(Map<String, dynamic>
        json) {
        return Deployment-branch-policy-settings(
            protected_branches: (json['protected_branches'] as bool) ,
            custom_branch_policies: (json['custom_branch_policies'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policy-settings? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policy-settings.fromJson(json);
    }

    final bool  protected_branches;
    final bool  custom_branch_policies;


    Map<String, dynamic> toJson() {
        return {
            'protected_branches': protected_branches,
            'custom_branch_policies': custom_branch_policies,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          protected_branches,
          custom_branch_policies,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-branch-policy-settings
            && protected_branches == other.protected_branches
            && custom_branch_policies == other.custom_branch_policies
        ;
    }
}
