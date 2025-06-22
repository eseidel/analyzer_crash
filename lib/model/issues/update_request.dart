import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_request.dart';
import 'package:github/model/issues/update_request_title.dart';
import 'package:github/model/issues/update_request_state.dart';
import 'package:github/model/issues/update_request_state_reason.dart';
import 'package:github/model/issues/update_request_milestone.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
import 'package:github/model/issues/update_request.dart';
import 'package:github/model/issues/update_request_title.dart';
import 'package:github/model/issues/update_request_state.dart';
import 'package:github/model/issues/update_request_state_reason.dart';
import 'package:github/model/issues/update_request_milestone.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
import 'package:github/model/issues/update_request_labels_inner.dart';
@immutable
class Issues&#x2F;updateRequest {
    Issues&#x2F;updateRequest(
        {  this.title, this.body, this.assignee, this.state, this.state_reason, this.milestone, this.labels = const [], this.assignees = const [], this.type,
         }
    );

    factory Issues&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;updateRequest(
            title: Issues/updateRequestTitle.maybeFromJson(json['title'] as dynamic),
            body: json['body'] as String? ,
            assignee: json['assignee'] as String? ,
            state: Issues/updateRequestState.maybeFromJson(json['state'] as String?) ,
            state_reason: Issues/updateRequestStateReason.maybeFromJson(json['state_reason'] as String?) ,
            milestone: Issues/updateRequestMilestone.maybeFromJson(json['milestone'] as dynamic),
            labels: (json['labels'] as List?)?.map<Issues/updateRequestLabelsInner>((e) => Issues/updateRequestLabelsInner.fromJson(e as dynamic)).toList() ,
            assignees: (json['assignees'] as List?)?.cast<String>() ,
            type: json['type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateRequest.fromJson(json);
    }

    final  Issues/updateRequestTitle? title;
    final  String? body;
    final  String? assignee;
    final  Issues/updateRequestState? state;
    final  Issues/updateRequestStateReason? state_reason;
    final  Issues/updateRequestMilestone? milestone;
    final  List<Issues/updateRequestLabelsInner>? labels;
    final  List<String>? assignees;
    final  String? type;


    Map<String, dynamic> toJson() {
        return {
            'title': title?.toJson(),
            'body': body,
            'assignee': assignee,
            'state': state?.toJson(),
            'state_reason': state_reason?.toJson(),
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
          state,
          state_reason,
          milestone,
          labels,
          assignees,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;updateRequest
            && title == other.title
            && body == other.body
            && assignee == other.assignee
            && state == other.state
            && state_reason == other.state_reason
            && milestone == other.milestone
            && listsEqual(labels, other.labels)
            && listsEqual(assignees, other.assignees)
            && type == other.type
        ;
    }
}
