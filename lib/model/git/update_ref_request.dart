import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/update_ref_request.dart';
import 'package:github/model/git/update_ref_request.dart';
@immutable
class Git&#x2F;updateRefRequest {
    Git&#x2F;updateRefRequest(
        { required this.sha, this.force = false,
         }
    );

    factory Git&#x2F;updateRefRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;updateRefRequest(
            sha: json['sha'] as String ,
            force: (json['force'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;updateRefRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;updateRefRequest.fromJson(json);
    }

    final String  sha;
    final  bool? force;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'force': force,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          force,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;updateRefRequest
            && sha == other.sha
            && force == other.force
        ;
    }
}
