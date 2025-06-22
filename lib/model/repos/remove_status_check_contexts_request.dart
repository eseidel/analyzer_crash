import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/remove_status_check_contexts_request.dart';
import 'package:github/model/repos/remove_status_check_contexts_request.dart';
@immutable
class Repos&#x2F;removeStatusCheckContextsRequest {
    Repos&#x2F;removeStatusCheckContextsRequest(
        {  this.contexts = const [],
         }
    );

    factory Repos&#x2F;removeStatusCheckContextsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;removeStatusCheckContextsRequest(
            contexts: (json['contexts'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;removeStatusCheckContextsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;removeStatusCheckContextsRequest.fromJson(json);
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
        return other is Repos&#x2F;removeStatusCheckContextsRequest
            && listsEqual(contexts, other.contexts)
        ;
    }
}
