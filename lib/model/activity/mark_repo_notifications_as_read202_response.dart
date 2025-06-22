import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read202_response.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read202_response.dart';
@immutable
class Activity&#x2F;markRepoNotificationsAsRead202Response {
    Activity&#x2F;markRepoNotificationsAsRead202Response(
        {  this.message, this.url,
         }
    );

    factory Activity&#x2F;markRepoNotificationsAsRead202Response.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;markRepoNotificationsAsRead202Response(
            message: json['message'] as String? ,
            url: json['url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;markRepoNotificationsAsRead202Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;markRepoNotificationsAsRead202Response.fromJson(json);
    }

    final  String? message;
    final  String? url;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;markRepoNotificationsAsRead202Response
            && message == other.message
            && url == other.url
        ;
    }
}
