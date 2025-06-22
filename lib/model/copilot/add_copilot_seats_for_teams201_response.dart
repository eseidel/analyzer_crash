import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/add_copilot_seats_for_teams201_response.dart';
import 'package:github/model/copilot/add_copilot_seats_for_teams201_response.dart';
@immutable
class Copilot&#x2F;addCopilotSeatsForTeams201Response {
    Copilot&#x2F;addCopilotSeatsForTeams201Response(
        { required this.seats_created,
         }
    );

    factory Copilot&#x2F;addCopilotSeatsForTeams201Response.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;addCopilotSeatsForTeams201Response(
            seats_created: (json['seats_created'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;addCopilotSeatsForTeams201Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;addCopilotSeatsForTeams201Response.fromJson(json);
    }

    final int  seats_created;


    Map<String, dynamic> toJson() {
        return {
            'seats_created': seats_created,
        };
    }

    @override
    int get hashCode =>
          seats_created.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot&#x2F;addCopilotSeatsForTeams201Response
            && seats_created == other.seats_created
        ;
    }
}
