import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
@immutable
class Repository-rulesetLinksHtml {
    Repository-rulesetLinksHtml(
        {  this.href,
         }
    );

    factory Repository-rulesetLinksHtml.fromJson(Map<String, dynamic>
        json) {
        return Repository-rulesetLinksHtml(
            href: json['href'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetLinksHtml? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetLinksHtml.fromJson(json);
    }

    final  String? href;


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
        return other is Repository-rulesetLinksHtml
            && href == other.href
        ;
    }
}
