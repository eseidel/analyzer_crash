import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/commits200_response.dart';
import 'package:github/model/commit-search-result-item.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
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
import 'package:github/model/search/commits200_response.dart';
import 'package:github/model/commit-search-result-item.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
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
class Search&#x2F;commits200Response {
    Search&#x2F;commits200Response(
        { required this.total_count,required this.incomplete_results, this.items = const [],
         }
    );

    factory Search&#x2F;commits200Response.fromJson(Map<String, dynamic>
        json) {
        return Search&#x2F;commits200Response(
            total_count: (json['total_count'] as int).toInt() ,
            incomplete_results: (json['incomplete_results'] as bool) ,
            items: (json['items'] as List).map<Commit-search-result-item>((e) => Commit-search-result-item.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;commits200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;commits200Response.fromJson(json);
    }

    final int  total_count;
    final bool  incomplete_results;
    final List<Commit-search-result-item>  items;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'incomplete_results': incomplete_results,
            'items': items.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          incomplete_results,
          items,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Search&#x2F;commits200Response
            && total_count == other.total_count
            && incomplete_results == other.incomplete_results
            && listsEqual(items, other.items)
        ;
    }
}
