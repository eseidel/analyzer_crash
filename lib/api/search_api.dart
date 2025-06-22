import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/search/code200_response.dart';
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
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/search/code_parameter1.dart';
import 'package:github/model/search/code_parameter2.dart';
import 'package:github/model/search/code200_response.dart';
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
import 'package:github/model/search/commits_parameter1.dart';
import 'package:github/model/order.dart';
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
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/search/issues_and_pull_requests_parameter1.dart';
import 'package:github/model/order.dart';
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
import 'package:github/model/search/labels200_response.dart';
import 'package:github/model/label-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/search/labels_parameter2.dart';
import 'package:github/model/order.dart';
import 'package:github/model/search/labels200_response.dart';
import 'package:github/model/label-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/search/repos200_response.dart';
import 'package:github/model/repo-search-result-item.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/search/repos_parameter1.dart';
import 'package:github/model/order.dart';
import 'package:github/model/search/repos200_response.dart';
import 'package:github/model/repo-search-result-item.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/search/topics200_response.dart';
import 'package:github/model/topic-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
import 'package:github/model/search/topics200_response.dart';
import 'package:github/model/topic-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
import 'package:github/model/search/users200_response.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/search/users_parameter1.dart';
import 'package:github/model/order.dart';
import 'package:github/model/search/users200_response.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
class SearchApi {
    SearchApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Search/code200Response> search/code(
        String q,
        { Search/codeParameter1? sort,Search/codeParameter2? order = Search/codeParameter2.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/code'
,
            queryParameters: {
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/code200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/code');
    }
    Future<Search/commits200Response> search/commits(
        String q,
        { Search/commitsParameter1? sort,Order? order = Order.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/commits'
,
            queryParameters: {
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/commits200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/commits');
    }
    Future<Search/issuesAndPullRequests200Response> search/issuesAndPullRequests(
        String q,
        { Search/issuesAndPullRequestsParameter1? sort,Order? order = Order.desc,int? perPage = 30,int? page = 1,String? advancedSearch, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/issues'
,
            queryParameters: {
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
                'advanced_search': ?advancedSearch.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/issuesAndPullRequests200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/issuesAndPullRequests');
    }
    Future<Search/labels200Response> search/labels(
        int repositoryId,
        String q,
        { Search/labelsParameter2? sort,Order? order = Order.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/labels'
,
            queryParameters: {
                'repository_id': repositoryId.toString(),
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/labels200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/labels');
    }
    Future<Search/repos200Response> search/repos(
        String q,
        { Search/reposParameter1? sort,Order? order = Order.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/repositories'
,
            queryParameters: {
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/repos200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/repos');
    }
    Future<Search/topics200Response> search/topics(
        String q,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/topics'
,
            queryParameters: {
                'q': q.toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/topics200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/topics');
    }
    Future<Search/users200Response> search/users(
        String q,
        { Search/usersParameter1? sort,Order? order = Order.desc,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/search/users'
,
            queryParameters: {
                'q': q.toString(),
                'sort': ?sort?.toJson().toString(),
                'order': ?order?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Search/users200Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $search/users');
    }
}
