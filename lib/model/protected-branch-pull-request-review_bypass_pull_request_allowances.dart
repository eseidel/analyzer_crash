import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
@immutable
class Protected-branch-pull-request-reviewBypassPullRequestAllowances {
    Protected-branch-pull-request-reviewBypassPullRequestAllowances(
        {  this.users = const [], this.teams = const [], this.apps = const [],
         }
    );

    factory Protected-branch-pull-request-reviewBypassPullRequestAllowances.fromJson(Map<String, dynamic>
        json) {
        return Protected-branch-pull-request-reviewBypassPullRequestAllowances(
            users: (json['users'] as List?)?.map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            teams: (json['teams'] as List?)?.map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ,
            apps: (json['apps'] as List?)?.map<Integration>((e) => Integration.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branch-pull-request-reviewBypassPullRequestAllowances? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branch-pull-request-reviewBypassPullRequestAllowances.fromJson(json);
    }

    final  List<Simple-user>? users;
    final  List<Team>? teams;
    final  List<Integration>? apps;


    Map<String, dynamic> toJson() {
        return {
            'users': users?.map((e) => e.toJson()).toList(),
            'teams': teams?.map((e) => e.toJson()).toList(),
            'apps': apps?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          users,
          teams,
          apps,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branch-pull-request-reviewBypassPullRequestAllowances
            && listsEqual(users, other.users)
            && listsEqual(teams, other.teams)
            && listsEqual(apps, other.apps)
        ;
    }
}
