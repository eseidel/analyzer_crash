import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_deployment_branch_policies200_response.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/repos/list_deployment_branch_policies200_response.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
@immutable
class Repos&#x2F;listDeploymentBranchPolicies200Response {
    Repos&#x2F;listDeploymentBranchPolicies200Response(
        { required this.total_count, this.branch_policies = const [],
         }
    );

    factory Repos&#x2F;listDeploymentBranchPolicies200Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;listDeploymentBranchPolicies200Response(
            total_count: (json['total_count'] as int).toInt() ,
            branch_policies: (json['branch_policies'] as List).map<Deployment-branch-policy>((e) => Deployment-branch-policy.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listDeploymentBranchPolicies200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listDeploymentBranchPolicies200Response.fromJson(json);
    }

    final int  total_count;
    final List<Deployment-branch-policy>  branch_policies;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'branch_policies': branch_policies.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          branch_policies,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;listDeploymentBranchPolicies200Response
            && total_count == other.total_count
            && listsEqual(branch_policies, other.branch_policies)
        ;
    }
}
