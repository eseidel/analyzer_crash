import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-commit-commented-event.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/timeline-commit-commented-event.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Timeline-commit-commented-event {
    Timeline-commit-commented-event(
        {  this.event, this.node_id, this.commit_id, this.comments = const [],
         }
    );

    factory Timeline-commit-commented-event.fromJson(Map<String, dynamic>
        json) {
        return Timeline-commit-commented-event(
            event: json['event'] as String? ,
            node_id: json['node_id'] as String? ,
            commit_id: json['commit_id'] as String? ,
            comments: (json['comments'] as List?)?.map<Commit-comment>((e) => Commit-comment.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-commit-commented-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-commit-commented-event.fromJson(json);
    }

    final  String? event;
    final  String? node_id;
    final  String? commit_id;
    final  List<Commit-comment>? comments;


    Map<String, dynamic> toJson() {
        return {
            'event': event,
            'node_id': node_id,
            'commit_id': commit_id,
            'comments': comments?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event,
          node_id,
          commit_id,
          comments,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-commit-commented-event
            && event == other.event
            && node_id == other.node_id
            && commit_id == other.commit_id
            && listsEqual(comments, other.comments)
        ;
    }
}
