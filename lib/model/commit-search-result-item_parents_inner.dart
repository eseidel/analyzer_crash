import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
@immutable
class Commit-search-result-itemParentsInner {
    Commit-search-result-itemParentsInner(
        {  this.url, this.html_url, this.sha,
         }
    );

    factory Commit-search-result-itemParentsInner.fromJson(Map<String, dynamic>
        json) {
        return Commit-search-result-itemParentsInner(
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            sha: json['sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-search-result-itemParentsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-search-result-itemParentsInner.fromJson(json);
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
        return other is Commit-search-result-itemParentsInner
            && url == other.url
            && html_url == other.html_url
            && sha == other.sha
        ;
    }
}
