import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
@immutable
class Pull-request-review-commentLinksHtml {
    Pull-request-review-commentLinksHtml(
        { required this.href,
         }
    );

    factory Pull-request-review-commentLinksHtml.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-review-commentLinksHtml(
            href: json['href'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-commentLinksHtml? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-commentLinksHtml.fromJson(json);
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
        return other is Pull-request-review-commentLinksHtml
            && href == other.href
        ;
    }
}
