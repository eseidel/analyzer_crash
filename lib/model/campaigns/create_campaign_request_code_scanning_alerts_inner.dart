import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaigns/create_campaign_request_code_scanning_alerts_inner.dart';
import 'package:github/model/campaigns/create_campaign_request_code_scanning_alerts_inner.dart';
@immutable
class Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner {
    Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner(
        { required this.repository_id, this.alert_numbers = const [],
         }
    );

    factory Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner.fromJson(Map<String, dynamic>
        json) {
        return Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner(
            repository_id: (json['repository_id'] as int).toInt() ,
            alert_numbers: (json['alert_numbers'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner.fromJson(json);
    }

    final int  repository_id;
    final List<int>  alert_numbers;


    Map<String, dynamic> toJson() {
        return {
            'repository_id': repository_id,
            'alert_numbers': alert_numbers,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_id,
          alert_numbers,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Campaigns&#x2F;createCampaignRequestCodeScanningAlertsInner
            && repository_id == other.repository_id
            && listsEqual(alert_numbers, other.alert_numbers)
        ;
    }
}
