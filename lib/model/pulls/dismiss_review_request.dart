import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/dismiss_review_request.dart';
import 'package:github/model/pulls/dismiss_review_request_event.dart';
import 'package:github/model/pulls/dismiss_review_request.dart';
import 'package:github/model/pulls/dismiss_review_request_event.dart';
@immutable
class Pulls&#x2F;dismissReviewRequest {
    Pulls&#x2F;dismissReviewRequest(
        { required this.message, this.event,
         }
    );

    factory Pulls&#x2F;dismissReviewRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;dismissReviewRequest(
            message: json['message'] as String ,
            event: Pulls/dismissReviewRequestEvent.maybeFromJson(json['event'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;dismissReviewRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;dismissReviewRequest.fromJson(json);
    }

    final String  message;
    final  Pulls/dismissReviewRequestEvent? event;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'event': event?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          event,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;dismissReviewRequest
            && message == other.message
            && event == other.event
        ;
    }
}
