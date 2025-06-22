import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deployment_status_request.dart';
import 'package:github/model/repos/create_deployment_status_request_state.dart';
import 'package:github/model/repos/create_deployment_status_request.dart';
import 'package:github/model/repos/create_deployment_status_request_state.dart';
@immutable
class Repos&#x2F;createDeploymentStatusRequest {
    Repos&#x2F;createDeploymentStatusRequest(
        { required this.state, this.target_url = , this.log_url = , this.description = , this.environment, this.environment_url = , this.auto_inactive,
         }
    );

    factory Repos&#x2F;createDeploymentStatusRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDeploymentStatusRequest(
            state: Repos/createDeploymentStatusRequestState.fromJson(json['state'] as String) ,
            target_url: json['target_url'] as String? ,
            log_url: json['log_url'] as String? ,
            description: json['description'] as String? ,
            environment: json['environment'] as String? ,
            environment_url: json['environment_url'] as String? ,
            auto_inactive: (json['auto_inactive'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeploymentStatusRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeploymentStatusRequest.fromJson(json);
    }

    final Repos/createDeploymentStatusRequestState  state;
    final  String? target_url;
    final  String? log_url;
    final  String? description;
    final  String? environment;
    final  String? environment_url;
    final  bool? auto_inactive;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'target_url': target_url,
            'log_url': log_url,
            'description': description,
            'environment': environment,
            'environment_url': environment_url,
            'auto_inactive': auto_inactive,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          target_url,
          log_url,
          description,
          environment,
          environment_url,
          auto_inactive,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createDeploymentStatusRequest
            && state == other.state
            && target_url == other.target_url
            && log_url == other.log_url
            && description == other.description
            && environment == other.environment
            && environment_url == other.environment_url
            && auto_inactive == other.auto_inactive
        ;
    }
}
