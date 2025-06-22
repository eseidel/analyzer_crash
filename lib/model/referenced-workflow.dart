import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/referenced-workflow.dart';
@immutable
class Referenced-workflow {
    Referenced-workflow(
        { required this.path,required this.sha, this.ref,
         }
    );

    factory Referenced-workflow.fromJson(Map<String, dynamic>
        json) {
        return Referenced-workflow(
            path: json['path'] as String ,
            sha: json['sha'] as String ,
            ref: json['ref'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Referenced-workflow? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Referenced-workflow.fromJson(json);
    }

    final String  path;
    final String  sha;
    final  String? ref;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'sha': sha,
            'ref': ref,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          sha,
          ref,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Referenced-workflow
            && path == other.path
            && sha == other.sha
            && ref == other.ref
        ;
    }
}
