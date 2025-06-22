import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-committed-event_tree.dart';
import 'package:github/model/timeline-committed-event_tree.dart';
@immutable
class Timeline-committed-eventTree {
    Timeline-committed-eventTree(
        { required this.sha,required this.url,
         }
    );

    factory Timeline-committed-eventTree.fromJson(Map<String, dynamic>
        json) {
        return Timeline-committed-eventTree(
            sha: json['sha'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-committed-eventTree? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-committed-eventTree.fromJson(json);
    }

    final String  sha;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-committed-eventTree
            && sha == other.sha
            && url == other.url
        ;
    }
}
