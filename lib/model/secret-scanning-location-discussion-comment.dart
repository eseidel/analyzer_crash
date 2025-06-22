import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
@immutable
class Secret-scanning-location-discussion-comment {
    Secret-scanning-location-discussion-comment(
        { required this.discussion_comment_url,
         }
    );

    factory Secret-scanning-location-discussion-comment.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-discussion-comment(
            discussion_comment_url: json['discussion_comment_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-discussion-comment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-discussion-comment.fromJson(json);
    }

    final String  discussion_comment_url;


    Map<String, dynamic> toJson() {
        return {
            'discussion_comment_url': discussion_comment_url,
        };
    }

    @override
    int get hashCode =>
          discussion_comment_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-discussion-comment
            && discussion_comment_url == other.discussion_comment_url
        ;
    }
}
