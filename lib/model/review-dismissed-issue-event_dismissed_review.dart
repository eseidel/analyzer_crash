import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-dismissed-issue-event_dismissed_review.dart';
import 'package:github/model/review-dismissed-issue-event_dismissed_review.dart';
@immutable
class Review-dismissed-issue-eventDismissedReview {
    Review-dismissed-issue-eventDismissedReview(
        { required this.state,required this.review_id,required this.dismissal_message, this.dismissal_commit_id,
         }
    );

    factory Review-dismissed-issue-eventDismissedReview.fromJson(Map<String, dynamic>
        json) {
        return Review-dismissed-issue-eventDismissedReview(
            state: json['state'] as String ,
            review_id: (json['review_id'] as int).toInt() ,
            dismissal_message: json['dismissal_message'] as String ,
            dismissal_commit_id: json['dismissal_commit_id'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-dismissed-issue-eventDismissedReview? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Review-dismissed-issue-eventDismissedReview.fromJson(json);
    }

    final String  state;
    final int  review_id;
    final String  dismissal_message;
    final  String? dismissal_commit_id;


    Map<String, dynamic> toJson() {
        return {
            'state': state,
            'review_id': review_id,
            'dismissal_message': dismissal_message,
            'dismissal_commit_id': dismissal_commit_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          review_id,
          dismissal_message,
          dismissal_commit_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Review-dismissed-issue-eventDismissedReview
            && state == other.state
            && review_id == other.review_id
            && dismissal_message == other.dismissal_message
            && dismissal_commit_id == other.dismissal_commit_id
        ;
    }
}
