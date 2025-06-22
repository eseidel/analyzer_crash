import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaigns/create_campaign_request.dart';
import 'package:github/model/campaigns/create_campaign_request_code_scanning_alerts_inner.dart';
import 'package:github/model/campaigns/create_campaign_request.dart';
import 'package:github/model/campaigns/create_campaign_request_code_scanning_alerts_inner.dart';
@immutable
class Campaigns&#x2F;createCampaignRequest {
    Campaigns&#x2F;createCampaignRequest(
        { required this.name,required this.description, this.managers = const [], this.team_managers = const [],required this.ends_at, this.contact_link, this.code_scanning_alerts = const [], this.generate_issues = false,
         }
    );

    factory Campaigns&#x2F;createCampaignRequest.fromJson(Map<String, dynamic>
        json) {
        return Campaigns&#x2F;createCampaignRequest(
            name: json['name'] as String ,
            description: json['description'] as String ,
            managers: (json['managers'] as List?)?.cast<String>() ,
            team_managers: (json['team_managers'] as List?)?.cast<String>() ,
            ends_at: DateTime.parse(json['ends_at'] as String),
            contact_link: json['contact_link'] as String? ,
            code_scanning_alerts: (json['code_scanning_alerts'] as List).map<Campaigns/createCampaignRequestCodeScanningAlertsInner>((e) => Campaigns/createCampaignRequestCodeScanningAlertsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            generate_issues: (json['generate_issues'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaigns&#x2F;createCampaignRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Campaigns&#x2F;createCampaignRequest.fromJson(json);
    }

    final String  name;
    final String  description;
    final  List<String>? managers;
    final  List<String>? team_managers;
    final DateTime  ends_at;
    final  String? contact_link;
    final List<Campaigns/createCampaignRequestCodeScanningAlertsInner>  code_scanning_alerts;
    final  bool? generate_issues;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'managers': managers,
            'team_managers': team_managers,
            'ends_at': ends_at.toIso8601String(),
            'contact_link': contact_link,
            'code_scanning_alerts': code_scanning_alerts.map((e) => e.toJson()).toList(),
            'generate_issues': generate_issues,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          description,
          managers,
          team_managers,
          ends_at,
          contact_link,
          code_scanning_alerts,
          generate_issues,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Campaigns&#x2F;createCampaignRequest
            && name == other.name
            && description == other.description
            && listsEqual(managers, other.managers)
            && listsEqual(team_managers, other.team_managers)
            && ends_at == other.ends_at
            && contact_link == other.contact_link
            && listsEqual(code_scanning_alerts, other.code_scanning_alerts)
            && generate_issues == other.generate_issues
        ;
    }
}
