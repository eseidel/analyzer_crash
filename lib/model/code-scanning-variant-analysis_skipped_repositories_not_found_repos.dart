import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
import 'package:github/model/code-scanning-variant-analysis_skipped_repositories_not_found_repos.dart';
@immutable
class Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos {
    Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos(
        { required this.repository_count, this.repository_full_names = const [],
         }
    );

    factory Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos(
            repository_count: (json['repository_count'] as int).toInt() ,
            repository_full_names: (json['repository_full_names'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos.fromJson(json);
    }

    final int  repository_count;
    final List<String>  repository_full_names;


    Map<String, dynamic> toJson() {
        return {
            'repository_count': repository_count,
            'repository_full_names': repository_full_names,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_count,
          repository_full_names,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysisSkippedRepositoriesNotFoundRepos
            && repository_count == other.repository_count
            && listsEqual(repository_full_names, other.repository_full_names)
        ;
    }
}
