import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
@immutable
class Issue-search-result-itemPullRequest {
    Issue-search-result-itemPullRequest(
        {  this.merged_at,required this.diff_url,required this.html_url,required this.patch_url,required this.url,
         }
    );

    factory Issue-search-result-itemPullRequest.fromJson(Map<String, dynamic>
        json) {
        return Issue-search-result-itemPullRequest(
            merged_at: maybeParseDateTime(json['merged_at'] as String?) ,
            diff_url: json['diff_url'] as String ,
            html_url: json['html_url'] as String ,
            patch_url: json['patch_url'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-search-result-itemPullRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-search-result-itemPullRequest.fromJson(json);
    }

    final  DateTime? merged_at;
    final String  diff_url;
    final String  html_url;
    final String  patch_url;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'merged_at': merged_at?.toIso8601String(),
            'diff_url': diff_url,
            'html_url': html_url,
            'patch_url': patch_url,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          merged_at,
          diff_url,
          html_url,
          patch_url,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-search-result-itemPullRequest
            && merged_at == other.merged_at
            && diff_url == other.diff_url
            && html_url == other.html_url
            && patch_url == other.patch_url
            && url == other.url
        ;
    }
}
