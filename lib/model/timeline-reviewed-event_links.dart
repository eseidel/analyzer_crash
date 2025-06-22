import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-reviewed-event_links.dart';
import 'package:github/model/timeline-reviewed-event_links_html.dart';
import 'package:github/model/timeline-reviewed-event_links_pull_request.dart';
import 'package:github/model/timeline-reviewed-event_links.dart';
import 'package:github/model/timeline-reviewed-event_links_html.dart';
import 'package:github/model/timeline-reviewed-event_links_pull_request.dart';
@immutable
class Timeline-reviewed-eventLinks {
    Timeline-reviewed-eventLinks(
        { required this.html,required this.pull_request,
         }
    );

    factory Timeline-reviewed-eventLinks.fromJson(Map<String, dynamic>
        json) {
        return Timeline-reviewed-eventLinks(
            html: Timeline-reviewed-eventLinksHtml.fromJson(json['html'] as Map<String, dynamic>) ,
            pull_request: Timeline-reviewed-eventLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-reviewed-eventLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-reviewed-eventLinks.fromJson(json);
    }

    final Timeline-reviewed-eventLinksHtml  html;
    final Timeline-reviewed-eventLinksPullRequest  pull_request;


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
        return other is Timeline-reviewed-eventLinks
            && html == other.html
            && pull_request == other.pull_request
        ;
    }
}
