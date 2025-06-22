import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams200_response.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_teams200_response.dart';
@immutable
class Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response {
    Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response(
        { required this.seats_cancelled,
         }
    );

    factory Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response(
            seats_cancelled: (json['seats_cancelled'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response.fromJson(json);
    }

    final int  seats_cancelled;


    Map<String, dynamic> toJson() {
        return {
            'seats_cancelled': seats_cancelled,
        };
    }

    @override
    int get hashCode =>
          seats_cancelled.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot&#x2F;cancelCopilotSeatAssignmentForTeams200Response
            && seats_cancelled == other.seats_cancelled
        ;
    }
}
