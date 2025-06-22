import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-file_links.dart';
@immutable
class Content-fileLinks {
    Content-fileLinks(
        { required this.git,required this.html,required this.self,
         }
    );

    factory Content-fileLinks.fromJson(Map<String, dynamic>
        json) {
        return Content-fileLinks(
            git: json['git'] as String ,
            html: json['html'] as String ,
            self: json['self'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-fileLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Content-fileLinks.fromJson(json);
    }

    final String  git;
    final String  html;
    final String  self;


    Map<String, dynamic> toJson() {
        return {
            'git': git,
            'html': html,
            'self': self,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          git,
          html,
          self,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Content-fileLinks
            && git == other.git
            && html == other.html
            && self == other.self
        ;
    }
}
