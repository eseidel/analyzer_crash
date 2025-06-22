import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/mark_notifications_as_read202_response.dart';
import 'package:github/model/activity/mark_notifications_as_read202_response.dart';
@immutable
class Activity&#x2F;markNotificationsAsRead202Response {
    Activity&#x2F;markNotificationsAsRead202Response(
        {  this.message,
         }
    );

    factory Activity&#x2F;markNotificationsAsRead202Response.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;markNotificationsAsRead202Response(
            message: json['message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;markNotificationsAsRead202Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;markNotificationsAsRead202Response.fromJson(json);
    }

    final  String? message;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
        };
    }

    @override
    int get hashCode =>
          message.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;markNotificationsAsRead202Response
            && message == other.message
        ;
    }
}
