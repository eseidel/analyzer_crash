import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
import 'package:github/model/copilot-organization-details.dart';
import 'package:github/model/copilot-organization-seat-breakdown.dart';
import 'package:github/model/copilot-organization-details_public_code_suggestions.dart';
import 'package:github/model/copilot-organization-details_ide_chat.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
import 'package:github/model/copilot-organization-details_cli.dart';
import 'package:github/model/copilot-organization-details_seat_management_setting.dart';
import 'package:github/model/copilot-organization-details_plan_type.dart';
@immutable
class Copilot-organization-details {
    Copilot-organization-details(
        { required this.seat_breakdown,required this.public_code_suggestions, this.ide_chat, this.platform_chat, this.cli,required this.seat_management_setting, this.plan_type,
        required this.entries, }
    );

    factory Copilot-organization-details.fromJson(Map<String, dynamic>
        json) {
        return Copilot-organization-details(
            seat_breakdown: Copilot-organization-seat-breakdown.fromJson(json['seat_breakdown'] as Map<String, dynamic>) ,
            public_code_suggestions: Copilot-organization-detailsPublicCodeSuggestions.fromJson(json['public_code_suggestions'] as String) ,
            ide_chat: Copilot-organization-detailsIdeChat.maybeFromJson(json['ide_chat'] as String?) ,
            platform_chat: Copilot-organization-detailsPlatformChat.maybeFromJson(json['platform_chat'] as String?) ,
            cli: Copilot-organization-detailsCli.maybeFromJson(json['cli'] as String?) ,
            seat_management_setting: Copilot-organization-detailsSeatManagementSetting.fromJson(json['seat_management_setting'] as String) ,
            plan_type: Copilot-organization-detailsPlanType.maybeFromJson(json['plan_type'] as String?) ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-details? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-details.fromJson(json);
    }

    final Copilot-organization-seat-breakdown  seat_breakdown;
    final Copilot-organization-detailsPublicCodeSuggestions  public_code_suggestions;
    final  Copilot-organization-detailsIdeChat? ide_chat;
    final  Copilot-organization-detailsPlatformChat? platform_chat;
    final  Copilot-organization-detailsCli? cli;
    final Copilot-organization-detailsSeatManagementSetting  seat_management_setting;
    final  Copilot-organization-detailsPlanType? plan_type;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'seat_breakdown': seat_breakdown.toJson(),
            'public_code_suggestions': public_code_suggestions.toJson(),
            'ide_chat': ide_chat?.toJson(),
            'platform_chat': platform_chat?.toJson(),
            'cli': cli?.toJson(),
            'seat_management_setting': seat_management_setting.toJson(),
            'plan_type': plan_type?.toJson(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          seat_breakdown,
          public_code_suggestions,
          ide_chat,
          platform_chat,
          cli,
          seat_management_setting,
          plan_type,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-organization-details
            && seat_breakdown == other.seat_breakdown
            && public_code_suggestions == other.public_code_suggestions
            && ide_chat == other.ide_chat
            && platform_chat == other.platform_chat
            && cli == other.cli
            && seat_management_setting == other.seat_management_setting
            && plan_type == other.plan_type
            && mapsEqual(entries, other.entries)
        ;
    }
}
