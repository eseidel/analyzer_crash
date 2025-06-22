import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/list_copilot_seats200_response.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
import 'package:github/model/copilot/list_copilot_seats200_response.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
@immutable
class Copilot&#x2F;listCopilotSeats200Response {
    Copilot&#x2F;listCopilotSeats200Response(
        {  this.total_seats, this.seats = const [],
         }
    );

    factory Copilot&#x2F;listCopilotSeats200Response.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;listCopilotSeats200Response(
            total_seats: (json['total_seats'] as int?).toInt() ,
            seats: (json['seats'] as List?)?.map<Copilot-seat-details>((e) => Copilot-seat-details.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;listCopilotSeats200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;listCopilotSeats200Response.fromJson(json);
    }

    final  int? total_seats;
    final  List<Copilot-seat-details>? seats;


    Map<String, dynamic> toJson() {
        return {
            'total_seats': total_seats,
            'seats': seats?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_seats,
          seats,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot&#x2F;listCopilotSeats200Response
            && total_seats == other.total_seats
            && listsEqual(seats, other.seats)
        ;
    }
}
