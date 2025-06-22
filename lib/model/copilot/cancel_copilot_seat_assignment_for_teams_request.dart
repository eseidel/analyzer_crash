import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams_request.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams_request.dart';
@immutable
class Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest {
    Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest(
        {  this.selected_teams = const [],
         }
    );

    factory Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest(
            selected_teams: (json['selected_teams'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest.fromJson(json);
    }

    final List<String>  selected_teams;


    Map<String, dynamic> toJson() {
        return {
            'selected_teams': selected_teams,
        };
    }

    @override
    int get hashCode =>
          selected_teams.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot&#x2F;cancelCopilotSeatAssignmentForTeamsRequest
            && listsEqual(selected_teams, other.selected_teams)
        ;
    }
}
