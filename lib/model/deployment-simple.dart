import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Deployment-simple {
    Deployment-simple(
        { required this.url,required this.id,required this.node_id,required this.task, this.original_environment,required this.environment,required this.description,required this.created_at,required this.updated_at,required this.statuses_url,required this.repository_url, this.transient_environment, this.production_environment, this.performed_via_github_app,
         }
    );

    factory Deployment-simple.fromJson(Map<String, dynamic>
        json) {
        return Deployment-simple(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            task: json['task'] as String ,
            original_environment: json['original_environment'] as String? ,
            environment: json['environment'] as String ,
            description: json['description'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            statuses_url: json['statuses_url'] as String ,
            repository_url: json['repository_url'] as String ,
            transient_environment: (json['transient_environment'] as bool?) ,
            production_environment: (json['production_environment'] as bool?) ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-simple.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  node_id;
    final String  task;
    final  String? original_environment;
    final String  environment;
    final String  description;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  statuses_url;
    final String  repository_url;
    final  bool? transient_environment;
    final  bool? production_environment;
    final  Nullable-integration? performed_via_github_app;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'node_id': node_id,
            'task': task,
            'original_environment': original_environment,
            'environment': environment,
            'description': description,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'statuses_url': statuses_url,
            'repository_url': repository_url,
            'transient_environment': transient_environment,
            'production_environment': production_environment,
            'performed_via_github_app': performed_via_github_app?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          node_id,
          task,
          original_environment,
          environment,
          description,
          created_at,
          updated_at,
          statuses_url,
          repository_url,
          transient_environment,
          production_environment,
          performed_via_github_app,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-simple
            && url == other.url
            && id == other.id
            && node_id == other.node_id
            && task == other.task
            && original_environment == other.original_environment
            && environment == other.environment
            && description == other.description
            && created_at == other.created_at
            && updated_at == other.updated_at
            && statuses_url == other.statuses_url
            && repository_url == other.repository_url
            && transient_environment == other.transient_environment
            && production_environment == other.production_environment
            && performed_via_github_app == other.performed_via_github_app
        ;
    }
}
