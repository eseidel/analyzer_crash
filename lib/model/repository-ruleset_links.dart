import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
import 'package:github/model/repository-ruleset_links.dart';
import 'package:github/model/repository-ruleset_links_self.dart';
import 'package:github/model/repository-ruleset_links_html.dart';
@immutable
class Repository-rulesetLinks {
    Repository-rulesetLinks(
        {  this.self, this.html,
         }
    );

    factory Repository-rulesetLinks.fromJson(Map<String, dynamic>
        json) {
        return Repository-rulesetLinks(
            self: Repository-rulesetLinksSelf.maybeFromJson(json['self'] as Map<String, dynamic>?) ,
            html: Repository-rulesetLinksHtml.maybeFromJson(json['html'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rulesetLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rulesetLinks.fromJson(json);
    }

    final  Repository-rulesetLinksSelf? self;
    final  Repository-rulesetLinksHtml? html;


    Map<String, dynamic> toJson() {
        return {
            'self': self?.toJson(),
            'html': html?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          self,
          html,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rulesetLinks
            && self == other.self
            && html == other.html
        ;
    }
}
