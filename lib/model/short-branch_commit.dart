import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/short-branch_commit.dart';
import 'package:github/model/short-branch_commit.dart';
@immutable
class Short-branchCommit {
    Short-branchCommit(
        { required this.sha,required this.url,
         }
    );

    factory Short-branchCommit.fromJson(Map<String, dynamic>
        json) {
        return Short-branchCommit(
            sha: json['sha'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Short-branchCommit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Short-branchCommit.fromJson(json);
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
        return other is Short-branchCommit
            && sha == other.sha
            && url == other.url
        ;
    }
}
