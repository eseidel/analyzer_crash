import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
@immutable
class Pull-request-reviewLinks {
    Pull-request-reviewLinks(
        { required this.html,required this.pull_request,
         }
    );

    factory Pull-request-reviewLinks.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-reviewLinks(
            html: Pull-request-reviewLinksHtml.fromJson(json['html'] as Map<String, dynamic>) ,
            pull_request: Pull-request-reviewLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-reviewLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-reviewLinks.fromJson(json);
    }

    final Pull-request-reviewLinksHtml  html;
    final Pull-request-reviewLinksPullRequest  pull_request;


    Map<String, dynamic> toJson() {
        return {
            'html': html.toJson(),
            'pull_request': pull_request.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          html,
          pull_request,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-reviewLinks
            && html == other.html
            && pull_request == other.pull_request
        ;
    }
}
