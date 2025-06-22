import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_ref_request.dart';
import 'package:github/model/git/create_ref_request.dart';
@immutable
class Git&#x2F;createRefRequest {
    Git&#x2F;createRefRequest(
        { required this.ref,required this.sha,
         }
    );

    factory Git&#x2F;createRefRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createRefRequest(
            ref: json['ref'] as String ,
            sha: json['sha'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createRefRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createRefRequest.fromJson(json);
    }

    final String  ref;
    final String  sha;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'sha': sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createRefRequest
            && ref == other.ref
            && sha == other.sha
        ;
    }
}
