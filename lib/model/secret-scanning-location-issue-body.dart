import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
@immutable
class Secret-scanning-location-issue-body {
    Secret-scanning-location-issue-body(
        { required this.issue_body_url,
         }
    );

    factory Secret-scanning-location-issue-body.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-issue-body(
            issue_body_url: json['issue_body_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-issue-body? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-issue-body.fromJson(json);
    }

    final String  issue_body_url;


    Map<String, dynamic> toJson() {
        return {
            'issue_body_url': issue_body_url,
        };
    }

    @override
    int get hashCode =>
          issue_body_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-issue-body
            && issue_body_url == other.issue_body_url
        ;
    }
}
