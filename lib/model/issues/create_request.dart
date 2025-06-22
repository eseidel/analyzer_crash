import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/create_request.dart';
import 'package:github/model/issues/create_request_title.dart';
import 'package:github/model/issues/create_request_milestone.dart';
import 'package:github/model/issues/create_request_labels_inner.dart';
import 'package:github/model/issues/create_request_labels_inner.dart';
import 'package:github/model/issues/create_request.dart';
import 'package:github/model/issues/create_request_title.dart';
import 'package:github/model/issues/create_request_milestone.dart';
import 'package:github/model/issues/create_request_labels_inner.dart';
import 'package:github/model/issues/create_request_labels_inner.dart';
@immutable
class Issues&#x2F;createRequest {
    Issues&#x2F;createRequest(
        { required this.title, this.body, this.assignee, this.milestone, this.labels = const [], this.assignees = const [], this.type,
         }
    );

    factory Issues&#x2F;createRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;createRequest(
            title: Issues/createRequestTitle.fromJson(json['title'] as dynamic),
            body: json['body'] as String? ,
            assignee: json['assignee'] as String? ,
            milestone: Issues/createRequestMilestone.maybeFromJson(json['milestone'] as dynamic),
            labels: (json['labels'] as List?)?.map<Issues/createRequestLabelsInner>((e) => Issues/createRequestLabelsInner.fromJson(e as dynamic)).toList() ,
            assignees: (json['assignees'] as List?)?.cast<String>() ,
            type: json['type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;createRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;createRequest.fromJson(json);
    }

    final Issues/createRequestTitle  title;
    final  String? body;
    final  String? assignee;
    final  Issues/createRequestMilestone? milestone;
    final  List<Issues/createRequestLabelsInner>? labels;
    final  List<String>? assignees;
    final  String? type;


    Map<String, dynamic> toJson() {
        return {
            'title': title.toJson(),
            'body': body,
            'assignee': assignee,
            'milestone': milestone?.toJson(),
            'labels': labels?.map((e) => e.toJson()).toList(),
            'assignees': assignees,
            'type': type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          body,
          assignee,
          milestone,
          labels,
          assignees,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;createRequest
            && title == other.title
            && body == other.body
            && assignee == other.assignee
            && milestone == other.milestone
            && listsEqual(labels, other.labels)
            && listsEqual(assignees, other.assignees)
            && type == other.type
        ;
    }
}
