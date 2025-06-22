import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/mark_notifications_as_read_request.dart';
import 'package:github/model/activity/mark_notifications_as_read_request.dart';
@immutable
class Activity&#x2F;markNotificationsAsReadRequest {
    Activity&#x2F;markNotificationsAsReadRequest(
        {  this.last_read_at, this.read,
         }
    );

    factory Activity&#x2F;markNotificationsAsReadRequest.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;markNotificationsAsReadRequest(
            last_read_at: maybeParseDateTime(json['last_read_at'] as String?) ,
            read: (json['read'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;markNotificationsAsReadRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;markNotificationsAsReadRequest.fromJson(json);
    }

    final  DateTime? last_read_at;
    final  bool? read;


    Map<String, dynamic> toJson() {
        return {
            'last_read_at': last_read_at?.toIso8601String(),
            'read': read,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          last_read_at,
          read,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;markNotificationsAsReadRequest
            && last_read_at == other.last_read_at
            && read == other.read
        ;
    }
}
