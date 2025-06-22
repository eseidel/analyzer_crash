import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_legacy_request.dart';
import 'package:github/model/teams/update_legacy_request_privacy.dart';
import 'package:github/model/teams/update_legacy_request_notification_setting.dart';
import 'package:github/model/teams/update_legacy_request_permission.dart';
import 'package:github/model/teams/update_legacy_request.dart';
import 'package:github/model/teams/update_legacy_request_privacy.dart';
import 'package:github/model/teams/update_legacy_request_notification_setting.dart';
import 'package:github/model/teams/update_legacy_request_permission.dart';
@immutable
class Teams&#x2F;updateLegacyRequest {
    Teams&#x2F;updateLegacyRequest(
        { required this.name, this.description, this.privacy, this.notification_setting, this.permission = Teams/updateLegacyRequestPermission.pull, this.parent_team_id,
         }
    );

    factory Teams&#x2F;updateLegacyRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;updateLegacyRequest(
            name: json['name'] as String ,
            description: json['description'] as String? ,
            privacy: Teams/updateLegacyRequestPrivacy.maybeFromJson(json['privacy'] as String?) ,
            notification_setting: Teams/updateLegacyRequestNotificationSetting.maybeFromJson(json['notification_setting'] as String?) ,
            permission: Teams/updateLegacyRequestPermission.maybeFromJson(json['permission'] as String?) ,
            parent_team_id: (json['parent_team_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateLegacyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateLegacyRequest.fromJson(json);
    }

    final String  name;
    final  String? description;
    final  Teams/updateLegacyRequestPrivacy? privacy;
    final  Teams/updateLegacyRequestNotificationSetting? notification_setting;
    final  Teams/updateLegacyRequestPermission? permission;
    final  int? parent_team_id;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'privacy': privacy?.toJson(),
            'notification_setting': notification_setting?.toJson(),
            'permission': permission?.toJson(),
            'parent_team_id': parent_team_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          description,
          privacy,
          notification_setting,
          permission,
          parent_team_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;updateLegacyRequest
            && name == other.name
            && description == other.description
            && privacy == other.privacy
            && notification_setting == other.notification_setting
            && permission == other.permission
            && parent_team_id == other.parent_team_id
        ;
    }
}
