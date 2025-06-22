import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-line-commented-event.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/timeline-line-commented-event.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Timeline-line-commented-event {
    Timeline-line-commented-event(
        {  this.event, this.node_id, this.comments = const [],
         }
    );

    factory Timeline-line-commented-event.fromJson(Map<String, dynamic>
        json) {
        return Timeline-line-commented-event(
            event: json['event'] as String? ,
            node_id: json['node_id'] as String? ,
            comments: (json['comments'] as List?)?.map<Pull-request-review-comment>((e) => Pull-request-review-comment.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-line-commented-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-line-commented-event.fromJson(json);
    }

    final  String? event;
    final  String? node_id;
    final  List<Pull-request-review-comment>? comments;


    Map<String, dynamic> toJson() {
        return {
            'event': event,
            'node_id': node_id,
            'comments': comments?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event,
          node_id,
          comments,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-line-commented-event
            && event == other.event
            && node_id == other.node_id
            && listsEqual(comments, other.comments)
        ;
    }
}
