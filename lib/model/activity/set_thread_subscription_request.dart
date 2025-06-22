import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/set_thread_subscription_request.dart';
import 'package:github/model/activity/set_thread_subscription_request.dart';
@immutable
class Activity&#x2F;setThreadSubscriptionRequest {
    Activity&#x2F;setThreadSubscriptionRequest(
        {  this.ignored = false,
         }
    );

    factory Activity&#x2F;setThreadSubscriptionRequest.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;setThreadSubscriptionRequest(
            ignored: (json['ignored'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;setThreadSubscriptionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;setThreadSubscriptionRequest.fromJson(json);
    }

    final  bool? ignored;


    Map<String, dynamic> toJson() {
        return {
            'ignored': ignored,
        };
    }

    @override
    int get hashCode =>
          ignored.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;setThreadSubscriptionRequest
            && ignored == other.ignored
        ;
    }
}
