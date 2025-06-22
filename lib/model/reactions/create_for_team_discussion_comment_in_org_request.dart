import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request_content.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request_content.dart';
@immutable
class Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest {
    Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest(
        { required this.content,
         }
    );

    factory Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest(
            content: Reactions/createForTeamDiscussionCommentInOrgRequestContent.fromJson(json['content'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest.fromJson(json);
    }

    final Reactions/createForTeamDiscussionCommentInOrgRequestContent  content;


    Map<String, dynamic> toJson() {
        return {
            'content': content.toJson(),
        };
    }

    @override
    int get hashCode =>
          content.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Reactions&#x2F;createForTeamDiscussionCommentInOrgRequest
            && content == other.content
        ;
    }
}
