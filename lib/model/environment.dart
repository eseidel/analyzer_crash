import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/environment.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/environment_protection_rules_inner_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
@immutable
class Environment {
    Environment(
        { required this.id,required this.node_id,required this.name,required this.url,required this.html_url,required this.created_at,required this.updated_at, this.protection_rules = const [], this.deployment_branch_policy,
         }
    );

    factory Environment.fromJson(Map<String, dynamic>
        json) {
        return Environment(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            protection_rules: (json['protection_rules'] as List?)?.map<EnvironmentProtectionRulesInner>((e) => EnvironmentProtectionRulesInner.fromJson(e as dynamic)).toList() ,
            deployment_branch_policy: Deployment-branch-policy-settings.maybeFromJson(json['deployment_branch_policy'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Environment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Environment.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  name;
    final String  url;
    final String  html_url;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  List<EnvironmentProtectionRulesInner>? protection_rules;
    final  Deployment-branch-policy-settings? deployment_branch_policy;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'url': url,
            'html_url': html_url,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'protection_rules': protection_rules?.map((e) => e.toJson()).toList(),
            'deployment_branch_policy': deployment_branch_policy?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          url,
          html_url,
          created_at,
          updated_at,
          protection_rules,
          deployment_branch_policy,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Environment
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && url == other.url
            && html_url == other.html_url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && listsEqual(protection_rules, other.protection_rules)
            && deployment_branch_policy == other.deployment_branch_policy
        ;
    }
}
