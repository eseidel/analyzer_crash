import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
@immutable
class Pull-request-minimalHead {
    Pull-request-minimalHead(
        { required this.ref,required this.sha,required this.repo,
         }
    );

    factory Pull-request-minimalHead.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-minimalHead(
            ref: json['ref'] as String ,
            sha: json['sha'] as String ,
            repo: Pull-request-minimalHeadRepo.fromJson(json['repo'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-minimalHead? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-minimalHead.fromJson(json);
    }

    final String  ref;
    final String  sha;
    final Pull-request-minimalHeadRepo  repo;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'sha': sha,
            'repo': repo.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          sha,
          repo,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-minimalHead
            && ref == other.ref
            && sha == other.sha
            && repo == other.repo
        ;
    }
}
