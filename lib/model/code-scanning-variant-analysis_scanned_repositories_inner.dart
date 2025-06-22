import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis_scanned_repositories_inner.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
@immutable
class Code-scanning-variant-analysisScannedRepositoriesInner {
    Code-scanning-variant-analysisScannedRepositoriesInner(
        { required this.repository,required this.analysis_status, this.result_count, this.artifact_size_in_bytes, this.failure_message,
         }
    );

    factory Code-scanning-variant-analysisScannedRepositoriesInner.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysisScannedRepositoriesInner(
            repository: Code-scanning-variant-analysis-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            analysis_status: Code-scanning-variant-analysis-status.fromJson(json['analysis_status'] as String) ,
            result_count: (json['result_count'] as int?).toInt() ,
            artifact_size_in_bytes: (json['artifact_size_in_bytes'] as int?).toInt() ,
            failure_message: json['failure_message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysisScannedRepositoriesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysisScannedRepositoriesInner.fromJson(json);
    }

    final Code-scanning-variant-analysis-repository  repository;
    final Code-scanning-variant-analysis-status  analysis_status;
    final  int? result_count;
    final  int? artifact_size_in_bytes;
    final  String? failure_message;


    Map<String, dynamic> toJson() {
        return {
            'repository': repository.toJson(),
            'analysis_status': analysis_status.toJson(),
            'result_count': result_count,
            'artifact_size_in_bytes': artifact_size_in_bytes,
            'failure_message': failure_message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository,
          analysis_status,
          result_count,
          artifact_size_in_bytes,
          failure_message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysisScannedRepositoriesInner
            && repository == other.repository
            && analysis_status == other.analysis_status
            && result_count == other.result_count
            && artifact_size_in_bytes == other.artifact_size_in_bytes
            && failure_message == other.failure_message
        ;
    }
}
