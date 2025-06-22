import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
@immutable
class Secret-scanning-location-issue-comment {
    Secret-scanning-location-issue-comment(
        { required this.issue_comment_url,
         }
    );

    factory Secret-scanning-location-issue-comment.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-issue-comment(
            issue_comment_url: json['issue_comment_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-issue-comment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-issue-comment.fromJson(json);
    }

    final String  issue_comment_url;


    Map<String, dynamic> toJson() {
        return {
            'issue_comment_url': issue_comment_url,
        };
    }

    @override
    int get hashCode =>
          issue_comment_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-issue-comment
            && issue_comment_url == other.issue_comment_url
        ;
    }
}
