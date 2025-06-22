import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/campaigns/list_org_campaigns_parameter5.dart';
import 'package:github/model/campaigns/list_org_campaigns_parameter5.dart';
enum Campaigns&#x2F;listOrgCampaignsParameter5 {
    created._('created'),
    updated._('updated'),
    endsAt._('ends_at'),
    published._('published'),
    ;

    const Campaigns&#x2F;listOrgCampaignsParameter5._(this.value);

    factory Campaigns&#x2F;listOrgCampaignsParameter5.fromJson(String json) {
        return Campaigns&#x2F;listOrgCampaignsParameter5.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Campaigns&#x2F;listOrgCampaignsParameter5 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Campaigns&#x2F;listOrgCampaignsParameter5? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Campaigns&#x2F;listOrgCampaignsParameter5.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
