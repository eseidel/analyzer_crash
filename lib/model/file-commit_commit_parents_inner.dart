import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
@immutable
class File-commitCommitParentsInner {
    File-commitCommitParentsInner(
        {  this.url, this.html_url, this.sha,
         }
    );

    factory File-commitCommitParentsInner.fromJson(Map<String, dynamic>
        json) {
        return File-commitCommitParentsInner(
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            sha: json['sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitCommitParentsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitCommitParentsInner.fromJson(json);
    }

    final  String? url;
    final  String? html_url;
    final  String? sha;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'html_url': html_url,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          html_url,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitCommitParentsInner
            && url == other.url
            && html_url == other.html_url
            && sha == other.sha
        ;
    }
}
