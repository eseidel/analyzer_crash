import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-suite.dart';
import 'package:github/model/check-suite_status.dart';
import 'package:github/model/check-suite_conclusion.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
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
import 'package:github/model/simple-commit.dart';
import 'package:github/model/simple-commit_author.dart';
import 'package:github/model/simple-commit_committer.dart';
import 'package:github/model/check-suite.dart';
import 'package:github/model/check-suite_status.dart';
import 'package:github/model/check-suite_conclusion.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
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
import 'package:github/model/simple-commit.dart';
import 'package:github/model/simple-commit_author.dart';
import 'package:github/model/simple-commit_committer.dart';
@immutable
class Check-suite {
    Check-suite(
        { required this.id,required this.node_id,required this.head_branch,required this.head_sha,required this.status,required this.conclusion,required this.url,required this.before,required this.after, this.pull_requests = const [],required this.app,required this.repository,required this.created_at,required this.updated_at,required this.head_commit,required this.latest_check_runs_count,required this.check_runs_url, this.rerequestable, this.runs_rerequestable,
         }
    );

    factory Check-suite.fromJson(Map<String, dynamic>
        json) {
        return Check-suite(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            head_branch: json['head_branch'] as String ,
            head_sha: json['head_sha'] as String ,
            status: Check-suiteStatus.fromJson(json['status'] as String) ,
            conclusion: Check-suiteConclusion.fromJson(json['conclusion'] as String) ,
            url: json['url'] as String ,
            before: json['before'] as String ,
            after: json['after'] as String ,
            pull_requests: (json['pull_requests'] as List).map<Pull-request-minimal>((e) => Pull-request-minimal.fromJson(e as Map<String, dynamic>) ).toList() ,
            app: Nullable-integration.fromJson(json['app'] as Map<String, dynamic>) ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            head_commit: Simple-commit.fromJson(json['head_commit'] as Map<String, dynamic>) ,
            latest_check_runs_count: (json['latest_check_runs_count'] as int).toInt() ,
            check_runs_url: json['check_runs_url'] as String ,
            rerequestable: (json['rerequestable'] as bool?) ,
            runs_rerequestable: (json['runs_rerequestable'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-suite? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-suite.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  head_branch;
    final String  head_sha;
    final Check-suiteStatus  status;
    final Check-suiteConclusion  conclusion;
    final String  url;
    final String  before;
    final String  after;
    final List<Pull-request-minimal>  pull_requests;
    final Nullable-integration  app;
    final Minimal-repository  repository;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Simple-commit  head_commit;
    final int  latest_check_runs_count;
    final String  check_runs_url;
    final  bool? rerequestable;
    final  bool? runs_rerequestable;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'head_branch': head_branch,
            'head_sha': head_sha,
            'status': status.toJson(),
            'conclusion': conclusion.toJson(),
            'url': url,
            'before': before,
            'after': after,
            'pull_requests': pull_requests.map((e) => e.toJson()).toList(),
            'app': app.toJson(),
            'repository': repository.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'head_commit': head_commit.toJson(),
            'latest_check_runs_count': latest_check_runs_count,
            'check_runs_url': check_runs_url,
            'rerequestable': rerequestable,
            'runs_rerequestable': runs_rerequestable,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          head_branch,
          head_sha,
          status,
          conclusion,
          url,
          before,
          after,
          pull_requests,
          app,
          repository,
          created_at,
          updated_at,
          head_commit,
          latest_check_runs_count,
          check_runs_url,
          rerequestable,
          runs_rerequestable,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-suite
            && id == other.id
            && node_id == other.node_id
            && head_branch == other.head_branch
            && head_sha == other.head_sha
            && status == other.status
            && conclusion == other.conclusion
            && url == other.url
            && before == other.before
            && after == other.after
            && listsEqual(pull_requests, other.pull_requests)
            && app == other.app
            && repository == other.repository
            && created_at == other.created_at
            && updated_at == other.updated_at
            && head_commit == other.head_commit
            && latest_check_runs_count == other.latest_check_runs_count
            && check_runs_url == other.check_runs_url
            && rerequestable == other.rerequestable
            && runs_rerequestable == other.runs_rerequestable
        ;
    }
}
