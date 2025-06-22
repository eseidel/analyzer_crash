import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read_request.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read_request.dart';
@immutable
class Activity&#x2F;markRepoNotificationsAsReadRequest {
    Activity&#x2F;markRepoNotificationsAsReadRequest(
        {  this.last_read_at,
         }
    );

    factory Activity&#x2F;markRepoNotificationsAsReadRequest.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;markRepoNotificationsAsReadRequest(
            last_read_at: maybeParseDateTime(json['last_read_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;markRepoNotificationsAsReadRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;markRepoNotificationsAsReadRequest.fromJson(json);
    }

    final  DateTime? last_read_at;


    Map<String, dynamic> toJson() {
        return {
            'last_read_at': last_read_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
          last_read_at.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;markRepoNotificationsAsReadRequest
            && last_read_at == other.last_read_at
        ;
    }
}
