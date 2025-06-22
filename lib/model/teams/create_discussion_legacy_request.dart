import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/create_discussion_legacy_request.dart';
import 'package:github/model/teams/create_discussion_legacy_request.dart';
@immutable
class Teams&#x2F;createDiscussionLegacyRequest {
    Teams&#x2F;createDiscussionLegacyRequest(
        { required this.title,required this.body, this.private = false,
         }
    );

    factory Teams&#x2F;createDiscussionLegacyRequest.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;createDiscussionLegacyRequest(
            title: json['title'] as String ,
            body: json['body'] as String ,
            private: (json['private'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;createDiscussionLegacyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;createDiscussionLegacyRequest.fromJson(json);
    }

    final String  title;
    final String  body;
    final  bool? private;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'body': body,
            'private': private,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          body,
          private,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;createDiscussionLegacyRequest
            && title == other.title
            && body == other.body
            && private == other.private
        ;
    }
}
