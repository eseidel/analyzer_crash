import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/get_all_environments200_response.dart';
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
import 'package:github/model/repos/get_all_environments200_response.dart';
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
class Repos&#x2F;getAllEnvironments200Response {
    Repos&#x2F;getAllEnvironments200Response(
        {  this.total_count, this.environments = const [],
         }
    );

    factory Repos&#x2F;getAllEnvironments200Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;getAllEnvironments200Response(
            total_count: (json['total_count'] as int?).toInt() ,
            environments: (json['environments'] as List?)?.map<Environment>((e) => Environment.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;getAllEnvironments200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;getAllEnvironments200Response.fromJson(json);
    }

    final  int? total_count;
    final  List<Environment>? environments;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'environments': environments?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          environments,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;getAllEnvironments200Response
            && total_count == other.total_count
            && listsEqual(environments, other.environments)
        ;
    }
}
