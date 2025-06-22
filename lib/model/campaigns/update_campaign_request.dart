import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaigns/update_campaign_request.dart';
import 'package:github/model/campaign-state.dart';
import 'package:github/model/campaigns/update_campaign_request.dart';
import 'package:github/model/campaign-state.dart';
@immutable
class Campaigns&#x2F;updateCampaignRequest {
    Campaigns&#x2F;updateCampaignRequest(
        {  this.name, this.description, this.managers = const [], this.team_managers = const [], this.ends_at, this.contact_link, this.state,
         }
    );

    factory Campaigns&#x2F;updateCampaignRequest.fromJson(Map<String, dynamic>
        json) {
        return Campaigns&#x2F;updateCampaignRequest(
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            managers: (json['managers'] as List?)?.cast<String>() ,
            team_managers: (json['team_managers'] as List?)?.cast<String>() ,
            ends_at: maybeParseDateTime(json['ends_at'] as String?) ,
            contact_link: json['contact_link'] as String? ,
            state: Campaign-state.maybeFromJson(json['state'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaigns&#x2F;updateCampaignRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Campaigns&#x2F;updateCampaignRequest.fromJson(json);
    }

    final  String? name;
    final  String? description;
    final  List<String>? managers;
    final  List<String>? team_managers;
    final  DateTime? ends_at;
    final  String? contact_link;
    final  Campaign-state? state;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'managers': managers,
            'team_managers': team_managers,
            'ends_at': ends_at?.toIso8601String(),
            'contact_link': contact_link,
            'state': state?.toJson(),
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
          state,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Campaigns&#x2F;updateCampaignRequest
            && name == other.name
            && description == other.description
            && listsEqual(managers, other.managers)
            && listsEqual(team_managers, other.team_managers)
            && ends_at == other.ends_at
            && contact_link == other.contact_link
            && state == other.state
        ;
    }
}
