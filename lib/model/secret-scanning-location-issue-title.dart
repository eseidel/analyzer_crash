import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
@immutable
class Secret-scanning-location-issue-title {
    Secret-scanning-location-issue-title(
        { required this.issue_title_url,
         }
    );

    factory Secret-scanning-location-issue-title.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-issue-title(
            issue_title_url: json['issue_title_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-issue-title? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-issue-title.fromJson(json);
    }

    final String  issue_title_url;


    Map<String, dynamic> toJson() {
        return {
            'issue_title_url': issue_title_url,
        };
    }

    @override
    int get hashCode =>
          issue_title_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-issue-title
            && issue_title_url == other.issue_title_url
        ;
    }
}
