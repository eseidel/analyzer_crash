import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/create_request.dart';
import 'package:github/model/teams/create_request_privacy.dart';
import 'package:github/model/teams/create_request_notification_setting.dart';
import 'package:github/model/teams/create_request_permission.dart';
import 'package:github/model/teams/create_request.dart';
import 'package:github/model/teams/create_request_privacy.dart';
import 'package:github/model/teams/create_request_notification_setting.dart';
import 'package:github/model/teams/create_request_permission.dart';
@immutable
class Teams&#x2F;createRequest {
    Teams&#x2F;createRequest(
        { required this.name, this.description, this.maintainers = const [], this.repo_names = const [], this.privacy, this.notification_setting, this.permission = Teams/createRequestPermission.pull, this.parent_team_id,
         }
    );

    factory Teams&#x2F;createRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;createRequest(
            name: json['name'] as String ,
            description: json['description'] as String? ,
            maintainers: (json['maintainers'] as List?)?.cast<String>() ,
            repo_names: (json['repo_names'] as List?)?.cast<String>() ,
            privacy: Teams/createRequestPrivacy.maybeFromJson(json['privacy'] as String?) ,
            notification_setting: Teams/createRequestNotificationSetting.maybeFromJson(json['notification_setting'] as String?) ,
            permission: Teams/createRequestPermission.maybeFromJson(json['permission'] as String?) ,
            parent_team_id: (json['parent_team_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;createRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;createRequest.fromJson(json);
    }

    final String  name;
    final  String? description;
    final  List<String>? maintainers;
    final  List<String>? repo_names;
    final  Teams/createRequestPrivacy? privacy;
    final  Teams/createRequestNotificationSetting? notification_setting;
    final  Teams/createRequestPermission? permission;
    final  int? parent_team_id;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'description': description,
            'maintainers': maintainers,
            'repo_names': repo_names,
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
          maintainers,
          repo_names,
          privacy,
          notification_setting,
          permission,
          parent_team_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;createRequest
            && name == other.name
            && description == other.description
            && listsEqual(maintainers, other.maintainers)
            && listsEqual(repo_names, other.repo_names)
            && privacy == other.privacy
            && notification_setting == other.notification_setting
            && permission == other.permission
            && parent_team_id == other.parent_team_id
        ;
    }
}
