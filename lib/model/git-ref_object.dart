import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/git-ref_object.dart';
@immutable
class Git-refObject {
    Git-refObject(
        { required this.type,required this.sha,required this.url,
         }
    );

    factory Git-refObject.fromJson(Map<String, dynamic>
        json) {
        return Git-refObject(
            type: json['type'] as String ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-refObject? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-refObject.fromJson(json);
    }

    final String  type;
    final String  sha;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'sha': sha,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          sha,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-refObject
            && type == other.type
            && sha == other.sha
            && url == other.url
        ;
    }
}
