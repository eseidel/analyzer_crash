import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/short-blob.dart';
import 'package:github/model/short-blob.dart';
@immutable
class Short-blob {
    Short-blob(
        { required this.url,required this.sha,
         }
    );

    factory Short-blob.fromJson(Map<String, dynamic>
        json) {
        return Short-blob(
            url: json['url'] as String ,
            sha: json['sha'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Short-blob? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Short-blob.fromJson(json);
    }

    final String  url;
    final String  sha;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Short-blob
            && url == other.url
            && sha == other.sha
        ;
    }
}
