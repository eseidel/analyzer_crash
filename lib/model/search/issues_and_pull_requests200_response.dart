import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/issues_and_pull_requests200_response.dart';
import 'package:github/model/issue-search-result-item.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/search/issues_and_pull_requests200_response.dart';
import 'package:github/model/issue-search-result-item.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Search&#x2F;issuesAndPullRequests200Response {
    Search&#x2F;issuesAndPullRequests200Response(
        { required this.total_count,required this.incomplete_results, this.items = const [],
         }
    );

    factory Search&#x2F;issuesAndPullRequests200Response.fromJson(Map<String, dynamic>
        json) {
        return Search&#x2F;issuesAndPullRequests200Response(
            total_count: (json['total_count'] as int).toInt() ,
            incomplete_results: (json['incomplete_results'] as bool) ,
            items: (json['items'] as List).map<Issue-search-result-item>((e) => Issue-search-result-item.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;issuesAndPullRequests200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;issuesAndPullRequests200Response.fromJson(json);
    }

    final int  total_count;
    final bool  incomplete_results;
    final List<Issue-search-result-item>  items;


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
        return other is Search&#x2F;issuesAndPullRequests200Response
            && total_count == other.total_count
            && incomplete_results == other.incomplete_results
            && listsEqual(items, other.items)
        ;
    }
}
