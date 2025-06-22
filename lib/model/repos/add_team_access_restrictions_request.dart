import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/add_team_access_restrictions_request.dart';
import 'package:github/model/repos/add_team_access_restrictions_request.dart';
@immutable
class Repos&#x2F;addTeamAccessRestrictionsRequest {
    Repos&#x2F;addTeamAccessRestrictionsRequest(
        {  this.teams = const [],
         }
    );

    factory Repos&#x2F;addTeamAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;addTeamAccessRestrictionsRequest(
            teams: (json['teams'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;addTeamAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;addTeamAccessRestrictionsRequest.fromJson(json);
    }

    final List<String>  teams;


    Map<String, dynamic> toJson() {
        return {
            'teams': teams,
        };
    }

    @override
    int get hashCode =>
          teams.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;addTeamAccessRestrictionsRequest
            && listsEqual(teams, other.teams)
        ;
    }
}
