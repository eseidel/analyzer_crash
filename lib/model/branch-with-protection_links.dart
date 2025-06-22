import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-with-protection_links.dart';
import 'package:github/model/branch-with-protection_links.dart';
@immutable
class Branch-with-protectionLinks {
    Branch-with-protectionLinks(
        { required this.html,required this.self,
         }
    );

    factory Branch-with-protectionLinks.fromJson(Map<String, dynamic>
        json) {
        return Branch-with-protectionLinks(
            html: json['html'] as String ,
            self: json['self'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-with-protectionLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-with-protectionLinks.fromJson(json);
    }

    final String  html;
    final String  self;


    Map<String, dynamic> toJson() {
        return {
            'html': html,
            'self': self,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          html,
          self,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-with-protectionLinks
            && html == other.html
            && self == other.self
        ;
    }
}
