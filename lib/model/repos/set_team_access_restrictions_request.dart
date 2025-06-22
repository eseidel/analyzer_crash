import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/set_team_access_restrictions_request.dart';
import 'package:github/model/repos/set_team_access_restrictions_request.dart';
@immutable
class Repos&#x2F;setTeamAccessRestrictionsRequest {
    Repos&#x2F;setTeamAccessRestrictionsRequest(
        {  this.teams = const [],
         }
    );

    factory Repos&#x2F;setTeamAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;setTeamAccessRestrictionsRequest(
            teams: (json['teams'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;setTeamAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;setTeamAccessRestrictionsRequest.fromJson(json);
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
        return other is Repos&#x2F;setTeamAccessRestrictionsRequest
            && listsEqual(teams, other.teams)
        ;
    }
}
