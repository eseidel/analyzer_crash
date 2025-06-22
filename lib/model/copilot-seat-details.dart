import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-seat-details.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-organization-simple.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_plan_type.dart';
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
class Copilot-seat-details {
    Copilot-seat-details(
        {  this.assignee, this.organization, this.assigning_team, this.pending_cancellation_date, this.last_activity_at, this.last_activity_editor,required this.created_at, this.updated_at, this.plan_type,
         }
    );

    factory Copilot-seat-details.fromJson(Map<String, dynamic>
        json) {
        return Copilot-seat-details(
            assignee: Nullable-simple-user.maybeFromJson(json['assignee'] as Map<String, dynamic>?) ,
            organization: Nullable-organization-simple.maybeFromJson(json['organization'] as Map<String, dynamic>?) ,
            assigning_team: Copilot-seat-detailsAssigningTeam.maybeFromJson(json['assigning_team'] as dynamic),
            pending_cancellation_date: json['pending_cancellation_date'] as String? ,
            last_activity_at: maybeParseDateTime(json['last_activity_at'] as String?) ,
            last_activity_editor: json['last_activity_editor'] as String? ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            plan_type: Copilot-seat-detailsPlanType.maybeFromJson(json['plan_type'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-seat-details? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-seat-details.fromJson(json);
    }

    final  Nullable-simple-user? assignee;
    final  Nullable-organization-simple? organization;
    final  Copilot-seat-detailsAssigningTeam? assigning_team;
    final  String? pending_cancellation_date;
    final  DateTime? last_activity_at;
    final  String? last_activity_editor;
    final DateTime  created_at;
    final  DateTime? updated_at;
    final  Copilot-seat-detailsPlanType? plan_type;


    Map<String, dynamic> toJson() {
        return {
            'assignee': assignee?.toJson(),
            'organization': organization?.toJson(),
            'assigning_team': assigning_team?.toJson(),
            'pending_cancellation_date': pending_cancellation_date,
            'last_activity_at': last_activity_at?.toIso8601String(),
            'last_activity_editor': last_activity_editor,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'plan_type': plan_type?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          assignee,
          organization,
          assigning_team,
          pending_cancellation_date,
          last_activity_at,
          last_activity_editor,
          created_at,
          updated_at,
          plan_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-seat-details
            && assignee == other.assignee
            && organization == other.organization
            && assigning_team == other.assigning_team
            && pending_cancellation_date == other.pending_cancellation_date
            && last_activity_at == other.last_activity_at
            && last_activity_editor == other.last_activity_editor
            && created_at == other.created_at
            && updated_at == other.updated_at
            && plan_type == other.plan_type
        ;
    }
}
