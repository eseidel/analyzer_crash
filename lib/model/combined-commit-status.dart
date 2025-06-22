import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/combined-commit-status.dart';
import 'package:github/model/simple-commit-status.dart';
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
import 'package:github/model/combined-commit-status.dart';
import 'package:github/model/simple-commit-status.dart';
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
class Combined-commit-status {
    Combined-commit-status(
        { required this.state, this.statuses = const [],required this.sha,required this.total_count,required this.repository,required this.commit_url,required this.url,
         }
    );

    factory Combined-commit-status.fromJson(Map<String, dynamic>
        json) {
        return Combined-commit-status(
            state: json['state'] as String ,
            statuses: (json['statuses'] as List).map<Simple-commit-status>((e) => Simple-commit-status.fromJson(e as Map<String, dynamic>) ).toList() ,
            sha: json['sha'] as String ,
            total_count: (json['total_count'] as int).toInt() ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            commit_url: json['commit_url'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Combined-commit-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Combined-commit-status.fromJson(json);
    }

    final String  state;
    final List<Simple-commit-status>  statuses;
    final String  sha;
    final int  total_count;
    final Minimal-repository  repository;
    final String  commit_url;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'state': state,
            'statuses': statuses.map((e) => e.toJson()).toList(),
            'sha': sha,
            'total_count': total_count,
            'repository': repository.toJson(),
            'commit_url': commit_url,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          statuses,
          sha,
          total_count,
          repository,
          commit_url,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Combined-commit-status
            && state == other.state
            && listsEqual(statuses, other.statuses)
            && sha == other.sha
            && total_count == other.total_count
            && repository == other.repository
            && commit_url == other.commit_url
            && url == other.url
        ;
    }
}
