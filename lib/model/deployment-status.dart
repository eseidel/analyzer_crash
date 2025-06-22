import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/deployment-status.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Deployment-status {
    Deployment-status(
        { required this.url,required this.id,required this.node_id,required this.state,required this.creator, this.description = , this.environment = , this.target_url = ,required this.created_at,required this.updated_at,required this.deployment_url,required this.repository_url, this.environment_url = , this.log_url = , this.performed_via_github_app,
         }
    );

    factory Deployment-status.fromJson(Map<String, dynamic>
        json) {
        return Deployment-status(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            state: Deployment-statusState.fromJson(json['state'] as String) ,
            creator: Nullable-simple-user.fromJson(json['creator'] as Map<String, dynamic>) ,
            description: json['description'] as String ,
            environment: json['environment'] as String? ,
            target_url: json['target_url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            deployment_url: json['deployment_url'] as String ,
            repository_url: json['repository_url'] as String ,
            environment_url: json['environment_url'] as String? ,
            log_url: json['log_url'] as String? ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-status.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  node_id;
    final Deployment-statusState  state;
    final Nullable-simple-user  creator;
    final String  description;
    final  String? environment;
    final String  target_url;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  deployment_url;
    final String  repository_url;
    final  String? environment_url;
    final  String? log_url;
    final  Nullable-integration? performed_via_github_app;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'node_id': node_id,
            'state': state.toJson(),
            'creator': creator.toJson(),
            'description': description,
            'environment': environment,
            'target_url': target_url,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'deployment_url': deployment_url,
            'repository_url': repository_url,
            'environment_url': environment_url,
            'log_url': log_url,
            'performed_via_github_app': performed_via_github_app?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          node_id,
          state,
          creator,
          description,
          environment,
          target_url,
          created_at,
          updated_at,
          deployment_url,
          repository_url,
          environment_url,
          log_url,
          performed_via_github_app,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-status
            && url == other.url
            && id == other.id
            && node_id == other.node_id
            && state == other.state
            && creator == other.creator
            && description == other.description
            && environment == other.environment
            && target_url == other.target_url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && deployment_url == other.deployment_url
            && repository_url == other.repository_url
            && environment_url == other.environment_url
            && log_url == other.log_url
            && performed_via_github_app == other.performed_via_github_app
        ;
    }
}
