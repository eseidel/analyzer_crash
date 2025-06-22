import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/update_discussion_legacy_request.dart';
import 'package:github/model/teams/update_discussion_legacy_request.dart';
@immutable
class Teams&#x2F;updateDiscussionLegacyRequest {
    Teams&#x2F;updateDiscussionLegacyRequest(
        {  this.title, this.body,
         }
    );

    factory Teams&#x2F;updateDiscussionLegacyRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;updateDiscussionLegacyRequest(
            title: json['title'] as String? ,
            body: json['body'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;updateDiscussionLegacyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;updateDiscussionLegacyRequest.fromJson(json);
    }

    final  String? title;
    final  String? body;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'body': body,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          body,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;updateDiscussionLegacyRequest
            && title == other.title
            && body == other.body
        ;
    }
}
