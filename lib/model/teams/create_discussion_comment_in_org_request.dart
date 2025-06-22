import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/create_discussion_comment_in_org_request.dart';
import 'package:github/model/teams/create_discussion_comment_in_org_request.dart';
@immutable
class Teams&#x2F;createDiscussionCommentInOrgRequest {
    Teams&#x2F;createDiscussionCommentInOrgRequest(
        { required this.body,
         }
    );

    factory Teams&#x2F;createDiscussionCommentInOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;createDiscussionCommentInOrgRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;createDiscussionCommentInOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;createDiscussionCommentInOrgRequest.fromJson(json);
    }

    final String  body;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
        };
    }

    @override
    int get hashCode =>
          body.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;createDiscussionCommentInOrgRequest
            && body == other.body
        ;
    }
}
