import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis_status.dart';
import 'package:github/model/code-scanning-variant-analysis_failure_reason.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
@immutable
class Code-scanning-variant-analysis {
    Code-scanning-variant-analysis(
        { required this.id,required this.controller_repo,required this.actor,required this.query_language,required this.query_pack_url, this.created_at, this.updated_at, this.completed_at,required this.status, this.actions_workflow_run_id, this.failure_reason, this.scanned_repositories = const [], this.skipped_repositories,
         }
    );

    factory Code-scanning-variant-analysis.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysis(
            id: (json['id'] as int).toInt() ,
            controller_repo: Simple-repository.fromJson(json['controller_repo'] as Map<String, dynamic>) ,
            actor: Simple-user.fromJson(json['actor'] as Map<String, dynamic>) ,
            query_language: Code-scanning-variant-analysis-language.fromJson(json['query_language'] as String) ,
            query_pack_url: json['query_pack_url'] as String ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            completed_at: maybeParseDateTime(json['completed_at'] as String?) ,
            status: Code-scanning-variant-analysisStatus.fromJson(json['status'] as String) ,
            actions_workflow_run_id: (json['actions_workflow_run_id'] as int?).toInt() ,
            failure_reason: Code-scanning-variant-analysisFailureReason.maybeFromJson(json['failure_reason'] as String?) ,
            scanned_repositories: (json['scanned_repositories'] as List?)?.map<Code-scanning-variant-analysisScannedRepositoriesInner>((e) => Code-scanning-variant-analysisScannedRepositoriesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            skipped_repositories: Code-scanning-variant-analysisSkippedRepositories.maybeFromJson(json['skipped_repositories'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis.fromJson(json);
    }

    final int  id;
    final Simple-repository  controller_repo;
    final Simple-user  actor;
    final Code-scanning-variant-analysis-language  query_language;
    final String  query_pack_url;
    final  DateTime? created_at;
    final  DateTime? updated_at;
    final  DateTime? completed_at;
    final Code-scanning-variant-analysisStatus  status;
    final  int? actions_workflow_run_id;
    final  Code-scanning-variant-analysisFailureReason? failure_reason;
    final  List<Code-scanning-variant-analysisScannedRepositoriesInner>? scanned_repositories;
    final  Code-scanning-variant-analysisSkippedRepositories? skipped_repositories;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'controller_repo': controller_repo.toJson(),
            'actor': actor.toJson(),
            'query_language': query_language.toJson(),
            'query_pack_url': query_pack_url,
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'completed_at': completed_at?.toIso8601String(),
            'status': status.toJson(),
            'actions_workflow_run_id': actions_workflow_run_id,
            'failure_reason': failure_reason?.toJson(),
            'scanned_repositories': scanned_repositories?.map((e) => e.toJson()).toList(),
            'skipped_repositories': skipped_repositories?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          controller_repo,
          actor,
          query_language,
          query_pack_url,
          created_at,
          updated_at,
          completed_at,
          status,
          actions_workflow_run_id,
          failure_reason,
          scanned_repositories,
          skipped_repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysis
            && id == other.id
            && controller_repo == other.controller_repo
            && actor == other.actor
            && query_language == other.query_language
            && query_pack_url == other.query_pack_url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && completed_at == other.completed_at
            && status == other.status
            && actions_workflow_run_id == other.actions_workflow_run_id
            && failure_reason == other.failure_reason
            && listsEqual(scanned_repositories, other.scanned_repositories)
            && skipped_repositories == other.skipped_repositories
        ;
    }
}
