import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
@immutable
class Pull-request-review-commentLinks {
    Pull-request-review-commentLinks(
        { required this.self,required this.html,required this.pull_request,
         }
    );

    factory Pull-request-review-commentLinks.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-review-commentLinks(
            self: Pull-request-review-commentLinksSelf.fromJson(json['self'] as Map<String, dynamic>) ,
            html: Pull-request-review-commentLinksHtml.fromJson(json['html'] as Map<String, dynamic>) ,
            pull_request: Pull-request-review-commentLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-commentLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-commentLinks.fromJson(json);
    }

    final Pull-request-review-commentLinksSelf  self;
    final Pull-request-review-commentLinksHtml  html;
    final Pull-request-review-commentLinksPullRequest  pull_request;


    Map<String, dynamic> toJson() {
        return {
            'self': self.toJson(),
            'html': html.toJson(),
            'pull_request': pull_request.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          self,
          html,
          pull_request,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-review-commentLinks
            && self == other.self
            && html == other.html
            && pull_request == other.pull_request
        ;
    }
}
