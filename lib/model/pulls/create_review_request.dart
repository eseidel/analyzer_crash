import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_request.dart';
import 'package:github/model/pulls/create_review_request_event.dart';
import 'package:github/model/pulls/create_review_request_comments_inner.dart';
import 'package:github/model/pulls/create_review_request.dart';
import 'package:github/model/pulls/create_review_request_event.dart';
import 'package:github/model/pulls/create_review_request_comments_inner.dart';
@immutable
class Pulls&#x2F;createReviewRequest {
    Pulls&#x2F;createReviewRequest(
        {  this.commit_id, this.body, this.event, this.comments = const [],
         }
    );

    factory Pulls&#x2F;createReviewRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;createReviewRequest(
            commit_id: json['commit_id'] as String? ,
            body: json['body'] as String? ,
            event: Pulls/createReviewRequestEvent.maybeFromJson(json['event'] as String?) ,
            comments: (json['comments'] as List?)?.map<Pulls/createReviewRequestCommentsInner>((e) => Pulls/createReviewRequestCommentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewRequest.fromJson(json);
    }

    final  String? commit_id;
    final  String? body;
    final  Pulls/createReviewRequestEvent? event;
    final  List<Pulls/createReviewRequestCommentsInner>? comments;


    Map<String, dynamic> toJson() {
        return {
            'commit_id': commit_id,
            'body': body,
            'event': event?.toJson(),
            'comments': comments?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          commit_id,
          body,
          event,
          comments,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;createReviewRequest
            && commit_id == other.commit_id
            && body == other.body
            && event == other.event
            && listsEqual(comments, other.comments)
        ;
    }
}
