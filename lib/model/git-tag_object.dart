import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/git-tag_object.dart';
@immutable
class Git-tagObject {
    Git-tagObject(
        { required this.sha,required this.type,required this.url,
         }
    );

    factory Git-tagObject.fromJson(Map<String, dynamic>
        json) {
        return Git-tagObject(
            sha: json['sha'] as String ,
            type: json['type'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-tagObject? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-tagObject.fromJson(json);
    }

    final String  sha;
    final String  type;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'type': type,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          type,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-tagObject
            && sha == other.sha
            && type == other.type
            && url == other.url
        ;
    }
}
