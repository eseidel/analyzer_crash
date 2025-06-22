import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/reactions/create_for_issue_request.dart';
import 'package:github/model/reactions/create_for_issue_request_content.dart';
import 'package:github/model/reactions/create_for_issue_request.dart';
import 'package:github/model/reactions/create_for_issue_request_content.dart';
@immutable
class Reactions&#x2F;createForIssueRequest {
    Reactions&#x2F;createForIssueRequest(
        { required this.content,
         }
    );

    factory Reactions&#x2F;createForIssueRequest.fromJson(Map<String, dynamic>
        json) {
        return Reactions&#x2F;createForIssueRequest(
            content: Reactions/createForIssueRequestContent.fromJson(json['content'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Reactions&#x2F;createForIssueRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Reactions&#x2F;createForIssueRequest.fromJson(json);
    }

    final Reactions/createForIssueRequestContent  content;


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
        return other is Reactions&#x2F;createForIssueRequest
            && content == other.content
        ;
    }
}
