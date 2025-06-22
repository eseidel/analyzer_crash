import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
import 'package:github/model/code-scanning-variant-analysis-skipped-repo-group.dart';
import 'package:github/model/code-scanning-variant-analysis-repository.dart';
@immutable
class Code-scanning-variant-analysis-skipped-repo-group {
    Code-scanning-variant-analysis-skipped-repo-group(
        { required this.repository_count, this.repositories = const [],
         }
    );

    factory Code-scanning-variant-analysis-skipped-repo-group.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-variant-analysis-skipped-repo-group(
            repository_count: (json['repository_count'] as int).toInt() ,
            repositories: (json['repositories'] as List).map<Code-scanning-variant-analysis-repository>((e) => Code-scanning-variant-analysis-repository.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis-skipped-repo-group? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis-skipped-repo-group.fromJson(json);
    }

    final int  repository_count;
    final List<Code-scanning-variant-analysis-repository>  repositories;


    Map<String, dynamic> toJson() {
        return {
            'repository_count': repository_count,
            'repositories': repositories.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_count,
          repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-variant-analysis-skipped-repo-group
            && repository_count == other.repository_count
            && listsEqual(repositories, other.repositories)
        ;
    }
}
