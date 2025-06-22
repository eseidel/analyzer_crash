import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/set_status_check_contexts_request.dart';
import 'package:github/model/repos/set_status_check_contexts_request.dart';
@immutable
class Repos&#x2F;setStatusCheckContextsRequest {
    Repos&#x2F;setStatusCheckContextsRequest(
        {  this.contexts = const [],
         }
    );

    factory Repos&#x2F;setStatusCheckContextsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;setStatusCheckContextsRequest(
            contexts: (json['contexts'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;setStatusCheckContextsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;setStatusCheckContextsRequest.fromJson(json);
    }

    final List<String>  contexts;


    Map<String, dynamic> toJson() {
        return {
            'contexts': contexts,
        };
    }

    @override
    int get hashCode =>
          contexts.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;setStatusCheckContextsRequest
            && listsEqual(contexts, other.contexts)
        ;
    }
}
