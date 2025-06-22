import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/submit_review_request.dart';
import 'package:github/model/pulls/submit_review_request_event.dart';
import 'package:github/model/pulls/submit_review_request.dart';
import 'package:github/model/pulls/submit_review_request_event.dart';
@immutable
class Pulls&#x2F;submitReviewRequest {
    Pulls&#x2F;submitReviewRequest(
        {  this.body,required this.event,
         }
    );

    factory Pulls&#x2F;submitReviewRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;submitReviewRequest(
            body: json['body'] as String? ,
            event: Pulls/submitReviewRequestEvent.fromJson(json['event'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;submitReviewRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;submitReviewRequest.fromJson(json);
    }

    final  String? body;
    final Pulls/submitReviewRequestEvent  event;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
            'event': event.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          body,
          event,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;submitReviewRequest
            && body == other.body
            && event == other.event
        ;
    }
}
