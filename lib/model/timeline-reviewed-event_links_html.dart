import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-reviewed-event_links_html.dart';
import 'package:github/model/timeline-reviewed-event_links_html.dart';
@immutable
class Timeline-reviewed-eventLinksHtml {
    Timeline-reviewed-eventLinksHtml(
        { required this.href,
         }
    );

    factory Timeline-reviewed-eventLinksHtml.fromJson(Map<String, dynamic>
        json) {
        return Timeline-reviewed-eventLinksHtml(
            href: json['href'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-reviewed-eventLinksHtml? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-reviewed-eventLinksHtml.fromJson(json);
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
        return other is Timeline-reviewed-eventLinksHtml
            && href == other.href
        ;
    }
}
