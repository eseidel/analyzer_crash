import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
@immutable
class Pull-request-simpleLinks {
    Pull-request-simpleLinks(
        { required this.comments,required this.commits,required this.statuses,required this.html,required this.issue,required this.review_comments,required this.review_comment,required this.self,
         }
    );

    factory Pull-request-simpleLinks.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-simpleLinks(
            comments: Link.fromJson(json['comments'] as Map<String, dynamic>) ,
            commits: Link.fromJson(json['commits'] as Map<String, dynamic>) ,
            statuses: Link.fromJson(json['statuses'] as Map<String, dynamic>) ,
            html: Link.fromJson(json['html'] as Map<String, dynamic>) ,
            issue: Link.fromJson(json['issue'] as Map<String, dynamic>) ,
            review_comments: Link.fromJson(json['review_comments'] as Map<String, dynamic>) ,
            review_comment: Link.fromJson(json['review_comment'] as Map<String, dynamic>) ,
            self: Link.fromJson(json['self'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-simpleLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-simpleLinks.fromJson(json);
    }

    final Link  comments;
    final Link  commits;
    final Link  statuses;
    final Link  html;
    final Link  issue;
    final Link  review_comments;
    final Link  review_comment;
    final Link  self;


    Map<String, dynamic> toJson() {
        return {
            'comments': comments.toJson(),
            'commits': commits.toJson(),
            'statuses': statuses.toJson(),
            'html': html.toJson(),
            'issue': issue.toJson(),
            'review_comments': review_comments.toJson(),
            'review_comment': review_comment.toJson(),
            'self': self.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          comments,
          commits,
          statuses,
          html,
          issue,
          review_comments,
          review_comment,
          self,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-simpleLinks
            && comments == other.comments
            && commits == other.commits
            && statuses == other.statuses
            && html == other.html
            && issue == other.issue
            && review_comments == other.review_comments
            && review_comment == other.review_comment
            && self == other.self
        ;
    }
}
