import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis-repo-task.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis-repo-task.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
@immutable
class Code-scanning-variant-analysis-repo-task {
    Code-scanning-variant-analysis-repo-task(
        { required this.repository,required this.analysis_status, this.artifact_size_in_bytes, this.result_count, this.failure_message, this.database_commit_sha, this.source_location_prefix, this.artifact_url,
         }
    );

    factory Code-scanning-variant-analysis-repo-task.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysis-repo-task(
            repository: Simple-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            analysis_status: Code-scanning-variant-analysis-status.fromJson(json['analysis_status'] as String) ,
            artifact_size_in_bytes: (json['artifact_size_in_bytes'] as int?).toInt() ,
            result_count: (json['result_count'] as int?).toInt() ,
            failure_message: json['failure_message'] as String? ,
            database_commit_sha: json['database_commit_sha'] as String? ,
            source_location_prefix: json['source_location_prefix'] as String? ,
            artifact_url: json['artifact_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis-repo-task? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis-repo-task.fromJson(json);
    }

    final Simple-repository  repository;
    final Code-scanning-variant-analysis-status  analysis_status;
    final  int? artifact_size_in_bytes;
    final  int? result_count;
    final  String? failure_message;
    final  String? database_commit_sha;
    final  String? source_location_prefix;
    final  String? artifact_url;


    Map<String, dynamic> toJson() {
        return {
            'repository': repository.toJson(),
            'analysis_status': analysis_status.toJson(),
            'artifact_size_in_bytes': artifact_size_in_bytes,
            'result_count': result_count,
            'failure_message': failure_message,
            'database_commit_sha': database_commit_sha,
            'source_location_prefix': source_location_prefix,
            'artifact_url': artifact_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository,
          analysis_status,
          artifact_size_in_bytes,
          result_count,
          failure_message,
          database_commit_sha,
          source_location_prefix,
          artifact_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysis-repo-task
            && repository == other.repository
            && analysis_status == other.analysis_status
            && artifact_size_in_bytes == other.artifact_size_in_bytes
            && result_count == other.result_count
            && failure_message == other.failure_message
            && database_commit_sha == other.database_commit_sha
            && source_location_prefix == other.source_location_prefix
            && artifact_url == other.artifact_url
        ;
    }
}
