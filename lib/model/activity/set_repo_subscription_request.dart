import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/set_repo_subscription_request.dart';
import 'package:github/model/activity/set_repo_subscription_request.dart';
@immutable
class Activity&#x2F;setRepoSubscriptionRequest {
    Activity&#x2F;setRepoSubscriptionRequest(
        {  this.subscribed, this.ignored,
         }
    );

    factory Activity&#x2F;setRepoSubscriptionRequest.fromJson(Map<String, dynamic>
        json) {
        return Activity&#x2F;setRepoSubscriptionRequest(
            subscribed: (json['subscribed'] as bool?) ,
            ignored: (json['ignored'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;setRepoSubscriptionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;setRepoSubscriptionRequest.fromJson(json);
    }

    final  bool? subscribed;
    final  bool? ignored;


    Map<String, dynamic> toJson() {
        return {
            'subscribed': subscribed,
            'ignored': ignored,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          subscribed,
          ignored,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity&#x2F;setRepoSubscriptionRequest
            && subscribed == other.subscribed
            && ignored == other.ignored
        ;
    }
}
