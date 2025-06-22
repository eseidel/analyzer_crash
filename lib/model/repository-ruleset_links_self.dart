import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
@immutable
class Repository-rulesetLinksSelf {
    Repository-rulesetLinksSelf(
        {  this.href,
         }
    );

    factory Repository-rulesetLinksSelf.fromJson(Map<String, dynamic>
        json) {
        return Repository-rulesetLinksSelf(
            href: json['href'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetLinksSelf? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetLinksSelf.fromJson(json);
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
        return other is Repository-rulesetLinksSelf
            && href == other.href
        ;
    }
}
