import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
@immutable
class Pull-request-minimalBase {
    Pull-request-minimalBase(
        { required this.ref,required this.sha,required this.repo,
         }
    );

    factory Pull-request-minimalBase.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-minimalBase(
            ref: json['ref'] as String ,
            sha: json['sha'] as String ,
            repo: Pull-request-minimalBaseRepo.fromJson(json['repo'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-minimalBase? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-minimalBase.fromJson(json);
    }

    final String  ref;
    final String  sha;
    final Pull-request-minimalBaseRepo  repo;


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
        return other is Pull-request-minimalBase
            && ref == other.ref
            && sha == other.sha
            && repo == other.repo
        ;
    }
}
