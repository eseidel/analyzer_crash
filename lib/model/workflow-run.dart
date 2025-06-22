import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/workflow-run.dart';
import 'package:github/model/referenced-workflow.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
@immutable
class Workflow-run {
    Workflow-run(
        { required this.id, this.name,required this.node_id, this.check_suite_id, this.check_suite_node_id,required this.head_branch,required this.head_sha,required this.path,required this.run_number, this.run_attempt, this.referenced_workflows = const [],required this.event,required this.status,required this.conclusion,required this.workflow_id,required this.url,required this.html_url, this.pull_requests = const [],required this.created_at,required this.updated_at, this.actor, this.triggering_actor, this.run_started_at,required this.jobs_url,required this.logs_url,required this.check_suite_url,required this.artifacts_url,required this.cancel_url,required this.rerun_url, this.previous_attempt_url,required this.workflow_url,required this.head_commit,required this.repository,required this.head_repository, this.head_repository_id,required this.display_title,
         }
    );

    factory Workflow-run.fromJson(Map<String, dynamic>
        json) {
        return Workflow-run(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String? ,
            node_id: json['node_id'] as String ,
            check_suite_id: (json['check_suite_id'] as int?).toInt() ,
            check_suite_node_id: json['check_suite_node_id'] as String? ,
            head_branch: json['head_branch'] as String ,
            head_sha: json['head_sha'] as String ,
            path: json['path'] as String ,
            run_number: (json['run_number'] as int).toInt() ,
            run_attempt: (json['run_attempt'] as int?).toInt() ,
            referenced_workflows: (json['referenced_workflows'] as List?)?.map<Referenced-workflow>((e) => Referenced-workflow.fromJson(e as Map<String, dynamic>) ).toList() ,
            event: json['event'] as String ,
            status: json['status'] as String ,
            conclusion: json['conclusion'] as String ,
            workflow_id: (json['workflow_id'] as int).toInt() ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            pull_requests: (json['pull_requests'] as List).map<Pull-request-minimal>((e) => Pull-request-minimal.fromJson(e as Map<String, dynamic>) ).toList() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            actor: Simple-user.maybeFromJson(json['actor'] as Map<String, dynamic>?) ,
            triggering_actor: Simple-user.maybeFromJson(json['triggering_actor'] as Map<String, dynamic>?) ,
            run_started_at: maybeParseDateTime(json['run_started_at'] as String?) ,
            jobs_url: json['jobs_url'] as String ,
            logs_url: json['logs_url'] as String ,
            check_suite_url: json['check_suite_url'] as String ,
            artifacts_url: json['artifacts_url'] as String ,
            cancel_url: json['cancel_url'] as String ,
            rerun_url: json['rerun_url'] as String ,
            previous_attempt_url: json['previous_attempt_url'] as String? ,
            workflow_url: json['workflow_url'] as String ,
            head_commit: Nullable-simple-commit.fromJson(json['head_commit'] as Map<String, dynamic>) ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            head_repository: Minimal-repository.fromJson(json['head_repository'] as Map<String, dynamic>) ,
            head_repository_id: (json['head_repository_id'] as int?).toInt() ,
            display_title: json['display_title'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Workflow-run? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Workflow-run.fromJson(json);
    }

    final int  id;
    final  String? name;
    final String  node_id;
    final  int? check_suite_id;
    final  String? check_suite_node_id;
    final String  head_branch;
    final String  head_sha;
    final String  path;
    final int  run_number;
    final  int? run_attempt;
    final  List<Referenced-workflow>? referenced_workflows;
    final String  event;
    final String  status;
    final String  conclusion;
    final int  workflow_id;
    final String  url;
    final String  html_url;
    final List<Pull-request-minimal>  pull_requests;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  Simple-user? actor;
    final  Simple-user? triggering_actor;
    final  DateTime? run_started_at;
    final String  jobs_url;
    final String  logs_url;
    final String  check_suite_url;
    final String  artifacts_url;
    final String  cancel_url;
    final String  rerun_url;
    final  String? previous_attempt_url;
    final String  workflow_url;
    final Nullable-simple-commit  head_commit;
    final Minimal-repository  repository;
    final Minimal-repository  head_repository;
    final  int? head_repository_id;
    final String  display_title;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'node_id': node_id,
            'check_suite_id': check_suite_id,
            'check_suite_node_id': check_suite_node_id,
            'head_branch': head_branch,
            'head_sha': head_sha,
            'path': path,
            'run_number': run_number,
            'run_attempt': run_attempt,
            'referenced_workflows': referenced_workflows?.map((e) => e.toJson()).toList(),
            'event': event,
            'status': status,
            'conclusion': conclusion,
            'workflow_id': workflow_id,
            'url': url,
            'html_url': html_url,
            'pull_requests': pull_requests.map((e) => e.toJson()).toList(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'actor': actor?.toJson(),
            'triggering_actor': triggering_actor?.toJson(),
            'run_started_at': run_started_at?.toIso8601String(),
            'jobs_url': jobs_url,
            'logs_url': logs_url,
            'check_suite_url': check_suite_url,
            'artifacts_url': artifacts_url,
            'cancel_url': cancel_url,
            'rerun_url': rerun_url,
            'previous_attempt_url': previous_attempt_url,
            'workflow_url': workflow_url,
            'head_commit': head_commit.toJson(),
            'repository': repository.toJson(),
            'head_repository': head_repository.toJson(),
            'head_repository_id': head_repository_id,
            'display_title': display_title,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          node_id,
          check_suite_id,
          check_suite_node_id,
          head_branch,
          head_sha,
          path,
          run_number,
          run_attempt,
          referenced_workflows,
          event,
          status,
          conclusion,
          workflow_id,
          url,
          html_url,
          pull_requests,
          created_at,
          updated_at,
          actor,
          triggering_actor,
          run_started_at,
          jobs_url,
          logs_url,
          check_suite_url,
          artifacts_url,
          cancel_url,
          rerun_url,
          previous_attempt_url,
          workflow_url,
          head_commit,
          repository,
          head_repository,
          head_repository_id,
          display_title,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Workflow-run
            && id == other.id
            && name == other.name
            && node_id == other.node_id
            && check_suite_id == other.check_suite_id
            && check_suite_node_id == other.check_suite_node_id
            && head_branch == other.head_branch
            && head_sha == other.head_sha
            && path == other.path
            && run_number == other.run_number
            && run_attempt == other.run_attempt
            && listsEqual(referenced_workflows, other.referenced_workflows)
            && event == other.event
            && status == other.status
            && conclusion == other.conclusion
            && workflow_id == other.workflow_id
            && url == other.url
            && html_url == other.html_url
            && listsEqual(pull_requests, other.pull_requests)
            && created_at == other.created_at
            && updated_at == other.updated_at
            && actor == other.actor
            && triggering_actor == other.triggering_actor
            && run_started_at == other.run_started_at
            && jobs_url == other.jobs_url
            && logs_url == other.logs_url
            && check_suite_url == other.check_suite_url
            && artifacts_url == other.artifacts_url
            && cancel_url == other.cancel_url
            && rerun_url == other.rerun_url
            && previous_attempt_url == other.previous_attempt_url
            && workflow_url == other.workflow_url
            && head_commit == other.head_commit
            && repository == other.repository
            && head_repository == other.head_repository
            && head_repository_id == other.head_repository_id
            && display_title == other.display_title
        ;
    }
}
