import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/remove_team_access_restrictions_request.dart';
import 'package:github/model/repos/remove_team_access_restrictions_request.dart';
@immutable
class Repos&#x2F;removeTeamAccessRestrictionsRequest {
    Repos&#x2F;removeTeamAccessRestrictionsRequest(
        {  this.teams = const [],
         }
    );

    factory Repos&#x2F;removeTeamAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;removeTeamAccessRestrictionsRequest(
            teams: (json['teams'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;removeTeamAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;removeTeamAccessRestrictionsRequest.fromJson(json);
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
        return other is Repos&#x2F;removeTeamAccessRestrictionsRequest
            && listsEqual(teams, other.teams)
        ;
    }
}
