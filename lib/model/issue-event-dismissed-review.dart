import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event-dismissed-review.dart';
import 'package:github/model/issue-event-dismissed-review.dart';
@immutable
class Issue-event-dismissed-review {
    Issue-event-dismissed-review(
        { required this.state,required this.review_id,required this.dismissal_message, this.dismissal_commit_id,
         }
    );

    factory Issue-event-dismissed-review.fromJson(Map<String, dynamic>
        json) {
        return Issue-event-dismissed-review(
            state: json['state'] as String ,
            review_id: (json['review_id'] as int).toInt() ,
            dismissal_message: json['dismissal_message'] as String ,
            dismissal_commit_id: json['dismissal_commit_id'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event-dismissed-review? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event-dismissed-review.fromJson(json);
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
        return other is Issue-event-dismissed-review
            && state == other.state
            && review_id == other.review_id
            && dismissal_message == other.dismissal_message
            && dismissal_commit_id == other.dismissal_commit_id
        ;
    }
}
