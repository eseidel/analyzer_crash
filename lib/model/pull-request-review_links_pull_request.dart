import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
@immutable
class Pull-request-reviewLinksPullRequest {
    Pull-request-reviewLinksPullRequest(
        { required this.href,
         }
    );

    factory Pull-request-reviewLinksPullRequest.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-reviewLinksPullRequest(
            href: json['href'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-reviewLinksPullRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-reviewLinksPullRequest.fromJson(json);
    }

    final String  href;


    Map<String, dynamic> toJson() {
        return {
            'href': href,
        };
    }

    @override
    int get hashCode =>
          href.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-reviewLinksPullRequest
            && href == other.href
        ;
    }
}
