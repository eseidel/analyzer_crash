import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
@immutable
class Secret-scanning-location-wiki-commit {
    Secret-scanning-location-wiki-commit(
        { required this.path,required this.start_line,required this.end_line,required this.start_column,required this.end_column,required this.blob_sha,required this.page_url,required this.commit_sha,required this.commit_url,
         }
    );

    factory Secret-scanning-location-wiki-commit.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-wiki-commit(
            path: json['path'] as String ,
            start_line: (json['start_line'] as num).toDouble() ,
            end_line: (json['end_line'] as num).toDouble() ,
            start_column: (json['start_column'] as num).toDouble() ,
            end_column: (json['end_column'] as num).toDouble() ,
            blob_sha: json['blob_sha'] as String ,
            page_url: json['page_url'] as String ,
            commit_sha: json['commit_sha'] as String ,
            commit_url: json['commit_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-wiki-commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-wiki-commit.fromJson(json);
    }

    final String  path;
    final double  start_line;
    final double  end_line;
    final double  start_column;
    final double  end_column;
    final String  blob_sha;
    final String  page_url;
    final String  commit_sha;
    final String  commit_url;


    Map<String, dynamic> toJson() {
        return {
            'path': path,
            'start_line': start_line,
            'end_line': end_line,
            'start_column': start_column,
            'end_column': end_column,
            'blob_sha': blob_sha,
            'page_url': page_url,
            'commit_sha': commit_sha,
            'commit_url': commit_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          path,
          start_line,
          end_line,
          start_column,
          end_column,
          blob_sha,
          page_url,
          commit_sha,
          commit_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-wiki-commit
            && path == other.path
            && start_line == other.start_line
            && end_line == other.end_line
            && start_column == other.start_column
            && end_column == other.end_column
            && blob_sha == other.blob_sha
            && page_url == other.page_url
            && commit_sha == other.commit_sha
            && commit_url == other.commit_url
        ;
    }
}
