import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_content_links.dart';
@immutable
class File-commitContentLinks {
    File-commitContentLinks(
        {  this.self, this.git, this.html,
         }
    );

    factory File-commitContentLinks.fromJson(Map<String, dynamic>
        json) {
        return File-commitContentLinks(
            self: json['self'] as String? ,
            git: json['git'] as String? ,
            html: json['html'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitContentLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitContentLinks.fromJson(json);
    }

    final  String? self;
    final  String? git;
    final  String? html;


    Map<String, dynamic> toJson() {
        return {
            'self': self,
            'git': git,
            'html': html,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          self,
          git,
          html,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitContentLinks
            && self == other.self
            && git == other.git
            && html == other.html
        ;
    }
}
