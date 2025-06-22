import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-search-result-item.dart';
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
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/code-search-result-item.dart';
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
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Code-search-result-item {
    Code-search-result-item(
        { required this.name,required this.path,required this.sha,required this.url,required this.git_url,required this.html_url,required this.repository,required this.score, this.file_size, this.language, this.last_modified_at, this.line_numbers = const [], this.text_matches = const [],
         }
    );

    factory Code-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Code-search-result-item(
            name: json['name'] as String ,
            path: json['path'] as String ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            git_url: json['git_url'] as String ,
            html_url: json['html_url'] as String ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            score: (json['score'] as num).toDouble() ,
            file_size: (json['file_size'] as int?).toInt() ,
            language: json['language'] as String? ,
            last_modified_at: maybeParseDateTime(json['last_modified_at'] as String?) ,
            line_numbers: (json['line_numbers'] as List?)?.cast<String>() ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-search-result-item.fromJson(json);
    }

    final String  name;
    final String  path;
    final String  sha;
    final String  url;
    final String  git_url;
    final String  html_url;
    final Minimal-repository  repository;
    final double  score;
    final  int? file_size;
    final  String? language;
    final  DateTime? last_modified_at;
    final  List<String>? line_numbers;
    final  List<Search-result-text-matchesInner>? text_matches;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'path': path,
            'sha': sha,
            'url': url,
            'git_url': git_url,
            'html_url': html_url,
            'repository': repository.toJson(),
            'score': score,
            'file_size': file_size,
            'language': language,
            'last_modified_at': last_modified_at?.toIso8601String(),
            'line_numbers': line_numbers,
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          path,
          sha,
          url,
          git_url,
          html_url,
          repository,
          score,
          file_size,
          language,
          last_modified_at,
          line_numbers,
          text_matches,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-search-result-item
            && name == other.name
            && path == other.path
            && sha == other.sha
            && url == other.url
            && git_url == other.git_url
            && html_url == other.html_url
            && repository == other.repository
            && score == other.score
            && file_size == other.file_size
            && language == other.language
            && last_modified_at == other.last_modified_at
            && listsEqual(line_numbers, other.line_numbers)
            && listsEqual(text_matches, other.text_matches)
        ;
    }
}
