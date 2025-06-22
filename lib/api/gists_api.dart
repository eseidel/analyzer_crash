import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/gists/create_request.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/forbidden_gist_response.dart';
import 'package:github/model/forbidden_gist_response_block.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gists/update_request.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/gists/create_comment_request.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/forbidden_gist_response.dart';
import 'package:github/model/forbidden_gist_response_block.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gists/update_comment_request.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/gist-commit.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-commit_change_status.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-commit.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-commit_change_status.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gist-simple.dart';
import 'package:github/model/gist-simple_forks_inner.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-simple_fork_of.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/base-gist.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
class GistsApi {
    GistsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Base-gist>> gists/list(
        { DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists'
,
            queryParameters: {
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Base-gist>((e) => Base-gist.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/list');
    }
    Future<Gist-simple> gists/create(
        Gists/createRequest gists/createRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/gists'
,
            body: gists/createRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/create');
    }
    Future<List<Base-gist>> gists/listPublic(
        { DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/public'
,
            queryParameters: {
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Base-gist>((e) => Base-gist.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listPublic');
    }
    Future<List<Base-gist>> gists/listStarred(
        { DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/starred'
,
            queryParameters: {
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Base-gist>((e) => Base-gist.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listStarred');
    }
    Future<Gist-simple> gists/get(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/get');
    }
    Future<void> gists/delete(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/gists/{gist_id}'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/delete');
    }
    Future<Gist-simple> gists/update(
        String gistId,
        Gists/updateRequest gists/updateRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/gists/{gist_id}'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
            body: gists/updateRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/update');
    }
    Future<List<Gist-comment>> gists/listComments(
        String gistId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/comments'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Gist-comment>((e) => Gist-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listComments');
    }
    Future<Gist-comment> gists/createComment(
        String gistId,
        Gists/createCommentRequest gists/createCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/gists/{gist_id}/comments'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
            body: gists/createCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/createComment');
    }
    Future<Gist-comment> gists/getComment(
        String gistId,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/comments/{comment_id}'
            .replaceAll('{gist_id}', "${ gistId }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/getComment');
    }
    Future<void> gists/deleteComment(
        String gistId,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/gists/{gist_id}/comments/{comment_id}'
            .replaceAll('{gist_id}', "${ gistId }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/deleteComment');
    }
    Future<Gist-comment> gists/updateComment(
        String gistId,
        int commentId,
        Gists/updateCommentRequest gists/updateCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/gists/{gist_id}/comments/{comment_id}'
            .replaceAll('{gist_id}', "${ gistId }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: gists/updateCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/updateComment');
    }
    Future<List<Gist-commit>> gists/listCommits(
        String gistId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/commits'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Gist-commit>((e) => Gist-commit.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listCommits');
    }
    Future<List<Gist-simple>> gists/listForks(
        String gistId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/forks'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Gist-simple>((e) => Gist-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listForks');
    }
    Future<Base-gist> gists/fork(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/gists/{gist_id}/forks'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Base-gist.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/fork');
    }
    Future<void> gists/checkIsStarred(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/star'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/checkIsStarred');
    }
    Future<void> gists/star(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/gists/{gist_id}/star'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/star');
    }
    Future<void> gists/unstar(
        String gistId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/gists/{gist_id}/star'
            .replaceAll('{gist_id}', "${ gistId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/unstar');
    }
    Future<Gist-simple> gists/getRevision(
        String gistId,
        String sha,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/gists/{gist_id}/{sha}'
            .replaceAll('{gist_id}', "${ gistId }")
                        .replaceAll('{sha}', "${ sha }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gist-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/getRevision');
    }
    Future<List<Base-gist>> gists/listForUser(
        String username,
        { DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/gists'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Base-gist>((e) => Base-gist.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $gists/listForUser');
    }
}
