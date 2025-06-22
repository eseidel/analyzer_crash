import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_html.dart';
@immutable
class Pull-request-reviewLinksHtml {
    Pull-request-reviewLinksHtml(
        { required this.href,
         }
    );

    factory Pull-request-reviewLinksHtml.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-reviewLinksHtml(
            href: json['href'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-reviewLinksHtml? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-reviewLinksHtml.fromJson(json);
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
        return other is Pull-request-reviewLinksHtml
            && href == other.href
        ;
    }
}
