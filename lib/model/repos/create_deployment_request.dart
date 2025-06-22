import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment_request.dart';
import 'package:github/model/repos/create_deployment_request_payload.dart';
import 'package:github/model/repos/create_deployment_request.dart';
import 'package:github/model/repos/create_deployment_request_payload.dart';
@immutable
class Repos&#x2F;createDeploymentRequest {
    Repos&#x2F;createDeploymentRequest(
        { required this.ref, this.task = deploy, this.auto_merge = true, this.required_contexts = const [], this.payload, this.environment = production, this.description = , this.transient_environment = false, this.production_environment,
         }
    );

    factory Repos&#x2F;createDeploymentRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDeploymentRequest(
            ref: json['ref'] as String ,
            task: json['task'] as String? ,
            auto_merge: (json['auto_merge'] as bool?) ,
            required_contexts: (json['required_contexts'] as List?)?.cast<String>() ,
            payload: Repos/createDeploymentRequestPayload.maybeFromJson(json['payload'] as dynamic),
            environment: json['environment'] as String? ,
            description: json['description'] as String? ,
            transient_environment: (json['transient_environment'] as bool?) ,
            production_environment: (json['production_environment'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeploymentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeploymentRequest.fromJson(json);
    }

    final String  ref;
    final  String? task;
    final  bool? auto_merge;
    final  List<String>? required_contexts;
    final  Repos/createDeploymentRequestPayload? payload;
    final  String? environment;
    final  String? description;
    final  bool? transient_environment;
    final  bool? production_environment;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref,
            'task': task,
            'auto_merge': auto_merge,
            'required_contexts': required_contexts,
            'payload': payload?.toJson(),
            'environment': environment,
            'description': description,
            'transient_environment': transient_environment,
            'production_environment': production_environment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          task,
          auto_merge,
          required_contexts,
          payload,
          environment,
          description,
          transient_environment,
          production_environment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createDeploymentRequest
            && ref == other.ref
            && task == other.task
            && auto_merge == other.auto_merge
            && listsEqual(required_contexts, other.required_contexts)
            && payload == other.payload
            && environment == other.environment
            && description == other.description
            && transient_environment == other.transient_environment
            && production_environment == other.production_environment
        ;
    }
}
