import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-review-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
@immutable
class Pull-request-review-request {
    Pull-request-review-request(
        {  this.users = const [], this.teams = const [],
         }
    );

    factory Pull-request-review-request.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-review-request(
            users: (json['users'] as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            teams: (json['teams'] as List).map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-request? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-request.fromJson(json);
    }

    final List<Simple-user>  users;
    final List<Team>  teams;


    Map<String, dynamic> toJson() {
        return {
            'users': users.map((e) => e.toJson()).toList(),
            'teams': teams.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          users,
          teams,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-review-request
            && listsEqual(users, other.users)
            && listsEqual(teams, other.teams)
        ;
    }
}
