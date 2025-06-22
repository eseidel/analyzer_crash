import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
@immutable
class Code-scanning-variant-analysisSkippedRepositories {
    Code-scanning-variant-analysisSkippedRepositories(
        { required this.access_mismatch_repos,required this.not_found_repos,required this.no_codeql_db_repos,required this.over_limit_repos,
         }
    );

    factory Code-scanning-variant-analysisSkippedRepositories.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysisSkippedRepositories(
            access_mismatch_repos: Code-scanning-variant-analysis-skipped-repo-group.fromJson(json['access_mismatch_repos'] as Map<String, dynamic>) ,
            not_found_repos: Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos.fromJson(json['not_found_repos'] as Map<String, dynamic>) ,
            no_codeql_db_repos: Code-scanning-variant-analysis-skipped-repo-group.fromJson(json['no_codeql_db_repos'] as Map<String, dynamic>) ,
            over_limit_repos: Code-scanning-variant-analysis-skipped-repo-group.fromJson(json['over_limit_repos'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysisSkippedRepositories? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysisSkippedRepositories.fromJson(json);
    }

    final Code-scanning-variant-analysis-skipped-repo-group  access_mismatch_repos;
    final Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos  not_found_repos;
    final Code-scanning-variant-analysis-skipped-repo-group  no_codeql_db_repos;
    final Code-scanning-variant-analysis-skipped-repo-group  over_limit_repos;


    Map<String, dynamic> toJson() {
        return {
            'access_mismatch_repos': access_mismatch_repos.toJson(),
            'not_found_repos': not_found_repos.toJson(),
            'no_codeql_db_repos': no_codeql_db_repos.toJson(),
            'over_limit_repos': over_limit_repos.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          access_mismatch_repos,
          not_found_repos,
          no_codeql_db_repos,
          over_limit_repos,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysisSkippedRepositories
            && access_mismatch_repos == other.access_mismatch_repos
            && not_found_repos == other.not_found_repos
            && no_codeql_db_repos == other.no_codeql_db_repos
            && over_limit_repos == other.over_limit_repos
        ;
    }
}
