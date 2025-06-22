import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_parents_inner.dart';
@immutable
class Git-commitParentsInner {
    Git-commitParentsInner(
        { required this.sha,required this.url,required this.html_url,
         }
    );

    factory Git-commitParentsInner.fromJson(Map<String, dynamic>
        json) {
        return Git-commitParentsInner(
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-commitParentsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-commitParentsInner.fromJson(json);
    }

    final String  sha;
    final String  url;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'url': url,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          url,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-commitParentsInner
            && sha == other.sha
            && url == other.url
            && html_url == other.html_url
        ;
    }
}
