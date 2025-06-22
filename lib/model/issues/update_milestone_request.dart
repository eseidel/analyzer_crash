import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/update_milestone_request.dart';
import 'package:github/model/issues/update_milestone_request_state.dart';
import 'package:github/model/issues/update_milestone_request.dart';
import 'package:github/model/issues/update_milestone_request_state.dart';
@immutable
class Issues&#x2F;updateMilestoneRequest {
    Issues&#x2F;updateMilestoneRequest(
        {  this.title, this.state = Issues/updateMilestoneRequestState.open, this.description, this.due_on,
         }
    );

    factory Issues&#x2F;updateMilestoneRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;updateMilestoneRequest(
            title: json['title'] as String? ,
            state: Issues/updateMilestoneRequestState.maybeFromJson(json['state'] as String?) ,
            description: json['description'] as String? ,
            due_on: maybeParseDateTime(json['due_on'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;updateMilestoneRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;updateMilestoneRequest.fromJson(json);
    }

    final  String? title;
    final  Issues/updateMilestoneRequestState? state;
    final  String? description;
    final  DateTime? due_on;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'state': state?.toJson(),
            'description': description,
            'due_on': due_on?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          state,
          description,
          due_on,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;updateMilestoneRequest
            && title == other.title
            && state == other.state
            && description == other.description
            && due_on == other.due_on
        ;
    }
}
