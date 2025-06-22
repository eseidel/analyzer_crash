import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/list_for_team_discussion_comment_in_org_parameter4.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_in_org_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/list_for_team_discussion_in_org_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_team_discussion_in_org_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_in_org_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/reactions/list_for_commit_comment_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_commit_comment_request.dart';
import 'package:github/model/reactions/create_for_commit_comment_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/reactions/list_for_issue_comment_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_issue_comment_request.dart';
import 'package:github/model/reactions/create_for_issue_comment_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/reactions/list_for_issue_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_issue_request.dart';
import 'package:github/model/reactions/create_for_issue_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/reactions/list_for_pull_request_review_comment_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_pull_request_review_comment_request.dart';
import 'package:github/model/reactions/create_for_pull_request_review_comment_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/reactions/list_for_release_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_release_request.dart';
import 'package:github/model/reactions/create_for_release_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/list_for_team_discussion_comment_legacy_parameter3.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_legacy_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_comment_legacy_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/list_for_team_discussion_legacy_parameter2.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reactions/create_for_team_discussion_legacy_request.dart';
import 'package:github/model/reactions/create_for_team_discussion_legacy_request_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction_content.dart';
class ReactionsApi {
    ReactionsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Reaction>> reactions/listForTeamDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
        { Reactions/listForTeamDiscussionCommentInOrgParameter4? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForTeamDiscussionCommentInOrg');
    }
    Future<Reaction> reactions/createForTeamDiscussionCommentInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
        Reactions/createForTeamDiscussionCommentInOrgRequest reactions/createForTeamDiscussionCommentInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            body: reactions/createForTeamDiscussionCommentInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForTeamDiscussionCommentInOrg');
    }
    Future<void> reactions/deleteForTeamDiscussionComment(
        String org,
        String teamSlug,
        int discussionNumber,
        int commentNumber,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions/{reaction_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForTeamDiscussionComment');
    }
    Future<List<Reaction>> reactions/listForTeamDiscussionInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        { Reactions/listForTeamDiscussionInOrgParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForTeamDiscussionInOrg');
    }
    Future<Reaction> reactions/createForTeamDiscussionInOrg(
        String org,
        String teamSlug,
        int discussionNumber,
        Reactions/createForTeamDiscussionInOrgRequest reactions/createForTeamDiscussionInOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: reactions/createForTeamDiscussionInOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForTeamDiscussionInOrg');
    }
    Future<void> reactions/deleteForTeamDiscussion(
        String org,
        String teamSlug,
        int discussionNumber,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions/{reaction_id}'
            .replaceAll('{org}', "${ org }")
                        .replaceAll('{team_slug}', "${ teamSlug }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForTeamDiscussion');
    }
    Future<List<Reaction>> reactions/listForCommitComment(
        String owner,
        String repo,
        int commentId,
        { Reactions/listForCommitCommentParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForCommitComment');
    }
    Future<Reaction> reactions/createForCommitComment(
        String owner,
        String repo,
        int commentId,
        Reactions/createForCommitCommentRequest reactions/createForCommitCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: reactions/createForCommitCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForCommitComment');
    }
    Future<void> reactions/deleteForCommitComment(
        String owner,
        String repo,
        int commentId,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForCommitComment');
    }
    Future<List<Reaction>> reactions/listForIssueComment(
        String owner,
        String repo,
        int commentId,
        { Reactions/listForIssueCommentParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForIssueComment');
    }
    Future<Reaction> reactions/createForIssueComment(
        String owner,
        String repo,
        int commentId,
        Reactions/createForIssueCommentRequest reactions/createForIssueCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: reactions/createForIssueCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForIssueComment');
    }
    Future<void> reactions/deleteForIssueComment(
        String owner,
        String repo,
        int commentId,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForIssueComment');
    }
    Future<List<Reaction>> reactions/listForIssue(
        String owner,
        String repo,
        int issueNumber,
        { Reactions/listForIssueParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{issue_number}', "${ issueNumber }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForIssue');
    }
    Future<Reaction> reactions/createForIssue(
        String owner,
        String repo,
        int issueNumber,
        Reactions/createForIssueRequest reactions/createForIssueRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{issue_number}', "${ issueNumber }")
            ,
            body: reactions/createForIssueRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForIssue');
    }
    Future<void> reactions/deleteForIssue(
        String owner,
        String repo,
        int issueNumber,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{issue_number}', "${ issueNumber }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForIssue');
    }
    Future<List<Reaction>> reactions/listForPullRequestReviewComment(
        String owner,
        String repo,
        int commentId,
        { Reactions/listForPullRequestReviewCommentParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForPullRequestReviewComment');
    }
    Future<Reaction> reactions/createForPullRequestReviewComment(
        String owner,
        String repo,
        int commentId,
        Reactions/createForPullRequestReviewCommentRequest reactions/createForPullRequestReviewCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: reactions/createForPullRequestReviewCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForPullRequestReviewComment');
    }
    Future<void> reactions/deleteForPullRequestComment(
        String owner,
        String repo,
        int commentId,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForPullRequestComment');
    }
    Future<List<Reaction>> reactions/listForRelease(
        String owner,
        String repo,
        int releaseId,
        { Reactions/listForReleaseParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/releases/{release_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForRelease');
    }
    Future<Reaction> reactions/createForRelease(
        String owner,
        String repo,
        int releaseId,
        Reactions/createForReleaseRequest reactions/createForReleaseRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/releases/{release_id}/reactions'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
            ,
            body: reactions/createForReleaseRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForRelease');
    }
    Future<void> reactions/deleteForRelease(
        String owner,
        String repo,
        int releaseId,
        int reactionId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/releases/{release_id}/reactions/{reaction_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{release_id}', "${ releaseId }")
                        .replaceAll('{reaction_id}', "${ reactionId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/deleteForRelease');
    }
    Future<List<Reaction>> reactions/listForTeamDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        int commentNumber,
        { Reactions/listForTeamDiscussionCommentLegacyParameter3? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForTeamDiscussionCommentLegacy');
    }
    Future<Reaction> reactions/createForTeamDiscussionCommentLegacy(
        int teamId,
        int discussionNumber,
        int commentNumber,
        Reactions/createForTeamDiscussionCommentLegacyRequest reactions/createForTeamDiscussionCommentLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
                        .replaceAll('{comment_number}', "${ commentNumber }")
            ,
            body: reactions/createForTeamDiscussionCommentLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForTeamDiscussionCommentLegacy');
    }
    Future<List<Reaction>> reactions/listForTeamDiscussionLegacy(
        int teamId,
        int discussionNumber,
        { Reactions/listForTeamDiscussionLegacyParameter2? content,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/teams/{team_id}/discussions/{discussion_number}/reactions'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            queryParameters: {
                'content': ?content?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Reaction>((e) => Reaction.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/listForTeamDiscussionLegacy');
    }
    Future<Reaction> reactions/createForTeamDiscussionLegacy(
        int teamId,
        int discussionNumber,
        Reactions/createForTeamDiscussionLegacyRequest reactions/createForTeamDiscussionLegacyRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/teams/{team_id}/discussions/{discussion_number}/reactions'
            .replaceAll('{team_id}', "${ teamId }")
                        .replaceAll('{discussion_number}', "${ discussionNumber }")
            ,
            body: reactions/createForTeamDiscussionLegacyRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Reaction.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $reactions/createForTeamDiscussionLegacy');
    }
}
