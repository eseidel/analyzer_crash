import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-run.dart';
import 'package:github/model/check-run_status.dart';
import 'package:github/model/check-run_conclusion.dart';
import 'package:github/model/check-run_output.dart';
import 'package:github/model/check-run_check_suite.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/check-run.dart';
import 'package:github/model/check-run_status.dart';
import 'package:github/model/check-run_conclusion.dart';
import 'package:github/model/check-run_output.dart';
import 'package:github/model/check-run_check_suite.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Check-run {
    Check-run(
        { required this.id,required this.head_sha,required this.node_id,required this.external_id,required this.url,required this.html_url,required this.details_url,required this.status,required this.conclusion,required this.started_at,required this.completed_at,required this.output,required this.name,required this.check_suite,required this.app, this.pull_requests = const [], this.deployment,
         }
    );

    factory Check-run.fromJson(Map<String, dynamic>
        json) {
        return Check-run(
            id: (json['id'] as int).toInt() ,
            head_sha: json['head_sha'] as String ,
            node_id: json['node_id'] as String ,
            external_id: json['external_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            details_url: json['details_url'] as String ,
            status: Check-runStatus.fromJson(json['status'] as String) ,
            conclusion: Check-runConclusion.fromJson(json['conclusion'] as String) ,
            started_at: DateTime.parse(json['started_at'] as String),
            completed_at: DateTime.parse(json['completed_at'] as String),
            output: Check-runOutput.fromJson(json['output'] as Map<String, dynamic>) ,
            name: json['name'] as String ,
            check_suite: Check-runCheckSuite.fromJson(json['check_suite'] as Map<String, dynamic>) ,
            app: Nullable-integration.fromJson(json['app'] as Map<String, dynamic>) ,
            pull_requests: (json['pull_requests'] as List).map<Pull-request-minimal>((e) => Pull-request-minimal.fromJson(e as Map<String, dynamic>) ).toList() ,
            deployment: Deployment-simple.maybeFromJson(json['deployment'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-run? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-run.fromJson(json);
    }

    final int  id;
    final String  head_sha;
    final String  node_id;
    final String  external_id;
    final String  url;
    final String  html_url;
    final String  details_url;
    final Check-runStatus  status;
    final Check-runConclusion  conclusion;
    final DateTime  started_at;
    final DateTime  completed_at;
    final Check-runOutput  output;
    final String  name;
    final Check-runCheckSuite  check_suite;
    final Nullable-integration  app;
    final List<Pull-request-minimal>  pull_requests;
    final  Deployment-simple? deployment;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'head_sha': head_sha,
            'node_id': node_id,
            'external_id': external_id,
            'url': url,
            'html_url': html_url,
            'details_url': details_url,
            'status': status.toJson(),
            'conclusion': conclusion.toJson(),
            'started_at': started_at.toIso8601String(),
            'completed_at': completed_at.toIso8601String(),
            'output': output.toJson(),
            'name': name,
            'check_suite': check_suite.toJson(),
            'app': app.toJson(),
            'pull_requests': pull_requests.map((e) => e.toJson()).toList(),
            'deployment': deployment?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          head_sha,
          node_id,
          external_id,
          url,
          html_url,
          details_url,
          status,
          conclusion,
          started_at,
          completed_at,
          output,
          name,
          check_suite,
          app,
          pull_requests,
          deployment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-run
            && id == other.id
            && head_sha == other.head_sha
            && node_id == other.node_id
            && external_id == other.external_id
            && url == other.url
            && html_url == other.html_url
            && details_url == other.details_url
            && status == other.status
            && conclusion == other.conclusion
            && started_at == other.started_at
            && completed_at == other.completed_at
            && output == other.output
            && name == other.name
            && check_suite == other.check_suite
            && app == other.app
            && listsEqual(pull_requests, other.pull_requests)
            && deployment == other.deployment
        ;
    }
}
