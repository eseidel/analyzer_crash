import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/re_run_workflow_request.dart';
import 'package:github/model/actions/re_run_workflow_request.dart';
@immutable
class Actions&#x2F;reRunWorkflowRequest {
    Actions&#x2F;reRunWorkflowRequest(
        {  this.enable_debug_logging = false,
         }
    );

    factory Actions&#x2F;reRunWorkflowRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;reRunWorkflowRequest(
            enable_debug_logging: (json['enable_debug_logging'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;reRunWorkflowRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;reRunWorkflowRequest.fromJson(json);
    }

    final  bool? enable_debug_logging;


    Map<String, dynamic> toJson() {
        return {
            'enable_debug_logging': enable_debug_logging,
        };
    }

    @override
    int get hashCode =>
          enable_debug_logging.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;reRunWorkflowRequest
            && enable_debug_logging == other.enable_debug_logging
        ;
    }
}
