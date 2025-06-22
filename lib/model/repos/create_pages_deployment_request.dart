import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_pages_deployment_request.dart';
import 'package:github/model/repos/create_pages_deployment_request.dart';
@immutable
class Repos&#x2F;createPagesDeploymentRequest {
    Repos&#x2F;createPagesDeploymentRequest(
        {  this.artifact_id, this.artifact_url, this.environment = github-pages, this.pages_build_version = GITHUB_SHA,required this.oidc_token,
         }
    );

    factory Repos&#x2F;createPagesDeploymentRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createPagesDeploymentRequest(
            artifact_id: (json['artifact_id'] as num?).toDouble() ,
            artifact_url: json['artifact_url'] as String? ,
            environment: json['environment'] as String? ,
            pages_build_version: json['pages_build_version'] as String ,
            oidc_token: json['oidc_token'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createPagesDeploymentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createPagesDeploymentRequest.fromJson(json);
    }

    final  double? artifact_id;
    final  String? artifact_url;
    final  String? environment;
    final String  pages_build_version;
    final String  oidc_token;


    Map<String, dynamic> toJson() {
        return {
            'artifact_id': artifact_id,
            'artifact_url': artifact_url,
            'environment': environment,
            'pages_build_version': pages_build_version,
            'oidc_token': oidc_token,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          artifact_id,
          artifact_url,
          environment,
          pages_build_version,
          oidc_token,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createPagesDeploymentRequest
            && artifact_id == other.artifact_id
            && artifact_url == other.artifact_url
            && environment == other.environment
            && pages_build_version == other.pages_build_version
            && oidc_token == other.oidc_token
        ;
    }
}
