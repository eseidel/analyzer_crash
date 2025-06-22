import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_workflow_dispatch_request.dart';
import 'package:github/model/actions/create_workflow_dispatch_request.dart';
@immutable
class Actions&#x2F;createWorkflowDispatchRequest {
    Actions&#x2F;createWorkflowDispatchRequest(
        { required this.ref, this.inputs,
         }
    );

    factory Actions&#x2F;createWorkflowDispatchRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createWorkflowDispatchRequest(
            ref: json['ref'] as String ,
            inputs: json['inputs'].map((key, value) => MapEntry(key, value)).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createWorkflowDispatchRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createWorkflowDispatchRequest.fromJson(json);
    }

    final String  ref;
    final  Map<String, dynamic>? inputs;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'inputs': inputs.map((key, value) => MapEntry(key, value)).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          inputs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createWorkflowDispatchRequest
            && ref == other.ref
            && mapsEqual(inputs, other.inputs)
        ;
    }
}
