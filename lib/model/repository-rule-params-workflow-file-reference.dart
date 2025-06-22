import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
@immutable
class Repository-rule-params-workflow-file-reference {
    Repository-rule-params-workflow-file-reference(
        { required this.path, this.ref,required this.repository_id, this.sha,
         }
    );

    factory Repository-rule-params-workflow-file-reference.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-params-workflow-file-reference(
            path: json['path'] as String ,
            ref: json['ref'] as String? ,
            repository_id: (json['repository_id'] as int).toInt() ,
            sha: json['sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-params-workflow-file-reference? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-params-workflow-file-reference.fromJson(json);
    }

    final String  path;
    final  String? ref;
    final int  repository_id;
    final  String? sha;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'ref': ref,
            'repository_id': repository_id,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          ref,
          repository_id,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-params-workflow-file-reference
            && path == other.path
            && ref == other.ref
            && repository_id == other.repository_id
            && sha == other.sha
        ;
    }
}
