import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/add_status_check_contexts_request.dart';
import 'package:github/model/repos/add_status_check_contexts_request.dart';
@immutable
class Repos&#x2F;addStatusCheckContextsRequest {
    Repos&#x2F;addStatusCheckContextsRequest(
        {  this.contexts = const [],
         }
    );

    factory Repos&#x2F;addStatusCheckContextsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;addStatusCheckContextsRequest(
            contexts: (json['contexts'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;addStatusCheckContextsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;addStatusCheckContextsRequest.fromJson(json);
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
        return other is Repos&#x2F;addStatusCheckContextsRequest
            && listsEqual(contexts, other.contexts)
        ;
    }
}
