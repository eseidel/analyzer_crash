import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/merge_upstream_request.dart';
import 'package:github/model/repos/merge_upstream_request.dart';
@immutable
class Repos&#x2F;mergeUpstreamRequest {
    Repos&#x2F;mergeUpstreamRequest(
        { required this.branch,
         }
    );

    factory Repos&#x2F;mergeUpstreamRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;mergeUpstreamRequest(
            branch: json['branch'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;mergeUpstreamRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;mergeUpstreamRequest.fromJson(json);
    }

    final String  branch;


    Map<String, dynamic> toJson() {
        return {
            'branch': branch,
        };
    }

    @override
    int get hashCode =>
          branch.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;mergeUpstreamRequest
            && branch == other.branch
        ;
    }
}
