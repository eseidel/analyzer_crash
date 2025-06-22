import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
@immutable
class Branch-restriction-policy {
    Branch-restriction-policy(
        { required this.url,required this.users_url,required this.teams_url,required this.apps_url, this.users = const [], this.teams = const [], this.apps = const [],
         }
    );

    factory Branch-restriction-policy.fromJson(Map<String, dynamic>
        json) {
        return Branch-restriction-policy(
            url: json['url'] as String ,
            users_url: json['users_url'] as String ,
            teams_url: json['teams_url'] as String ,
            apps_url: json['apps_url'] as String ,
            users: (json['users'] as List).map<Branch-restriction-policyUsersInner>((e) => Branch-restriction-policyUsersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            teams: (json['teams'] as List).map<Branch-restriction-policyTeamsInner>((e) => Branch-restriction-policyTeamsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            apps: (json['apps'] as List).map<Branch-restriction-policyAppsInner>((e) => Branch-restriction-policyAppsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-restriction-policy? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-restriction-policy.fromJson(json);
    }

    final String  url;
    final String  users_url;
    final String  teams_url;
    final String  apps_url;
    final List<Branch-restriction-policyUsersInner>  users;
    final List<Branch-restriction-policyTeamsInner>  teams;
    final List<Branch-restriction-policyAppsInner>  apps;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'users_url': users_url,
            'teams_url': teams_url,
            'apps_url': apps_url,
            'users': users.map((e) => e.toJson()).toList(),
            'teams': teams.map((e) => e.toJson()).toList(),
            'apps': apps.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          users_url,
          teams_url,
          apps_url,
          users,
          teams,
          apps,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-restriction-policy
            && url == other.url
            && users_url == other.users_url
            && teams_url == other.teams_url
            && apps_url == other.apps_url
            && listsEqual(users, other.users)
            && listsEqual(teams, other.teams)
            && listsEqual(apps, other.apps)
        ;
    }
}
