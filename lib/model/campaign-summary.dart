import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
import 'package:github/model/campaign-summary.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaign-summary_alert_stats.dart';
@immutable
class Campaign-summary {
    Campaign-summary(
        { required this.number,required this.created_at,required this.updated_at, this.name,required this.description, this.managers = const [], this.team_managers = const [], this.published_at,required this.ends_at, this.closed_at,required this.state,required this.contact_link, this.alert_stats,
         }
    );

    factory Campaign-summary.fromJson(Map<String, dynamic>
        json) {
        return Campaign-summary(
            number: (json['number'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            name: json['name'] as String? ,
            description: json['description'] as String ,
            managers: (json['managers'] as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            team_managers: (json['team_managers'] as List?)?.map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ,
            published_at: maybeParseDateTime(json['published_at'] as String?) ,
            ends_at: DateTime.parse(json['ends_at'] as String),
            closed_at: maybeParseDateTime(json['closed_at'] as String?) ,
            state: Campaign-state.fromJson(json['state'] as String) ,
            contact_link: json['contact_link'] as String ,
            alert_stats: Campaign-summaryAlertStats.maybeFromJson(json['alert_stats'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaign-summary? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Campaign-summary.fromJson(json);
    }

    final int  number;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  String? name;
    final String  description;
    final List<Simple-user>  managers;
    final  List<Team>? team_managers;
    final  DateTime? published_at;
    final DateTime  ends_at;
    final  DateTime? closed_at;
    final Campaign-state  state;
    final String  contact_link;
    final  Campaign-summaryAlertStats? alert_stats;


    Map<String, dynamic> toJson() {
        return {
            'number': number,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'name': name,
            'description': description,
            'managers': managers.map((e) => e.toJson()).toList(),
            'team_managers': team_managers?.map((e) => e.toJson()).toList(),
            'published_at': published_at?.toIso8601String(),
            'ends_at': ends_at.toIso8601String(),
            'closed_at': closed_at?.toIso8601String(),
            'state': state.toJson(),
            'contact_link': contact_link,
            'alert_stats': alert_stats?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          number,
          created_at,
          updated_at,
          name,
          description,
          managers,
          team_managers,
          published_at,
          ends_at,
          closed_at,
          state,
          contact_link,
          alert_stats,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Campaign-summary
            && number == other.number
            && created_at == other.created_at
            && updated_at == other.updated_at
            && name == other.name
            && description == other.description
            && listsEqual(managers, other.managers)
            && listsEqual(team_managers, other.team_managers)
            && published_at == other.published_at
            && ends_at == other.ends_at
            && closed_at == other.closed_at
            && state == other.state
            && contact_link == other.contact_link
            && alert_stats == other.alert_stats
        ;
    }
}
