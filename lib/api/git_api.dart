import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/git/create_blob_request.dart';
import 'package:github/model/short-blob.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git/create_blob422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/repository-rule-violation-error.dart';
import 'package:github/model/repository-rule-violation-error_metadata.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning.dart';
import 'package:github/model/repository-rule-violation-error_metadata_secret_scanning_bypass_placeholders_inner.dart';
import 'package:github/model/secret-scanning-push-protection-bypass-placeholder-id.dart';
import 'package:github/model/short-blob.dart';
import 'package:github/model/blob.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/blob.dart';
import 'package:github/model/git/create_commit_request.dart';
import 'package:github/model/git/create_commit_request_author.dart';
import 'package:github/model/git/create_commit_request_committer.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-commit.dart';
import 'package:github/model/git-commit_author.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_tree.dart';
import 'package:github/model/git-commit_parents_inner.dart';
import 'package:github/model/git-commit_verification.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/git/create_ref_request.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git/update_ref_request.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-ref.dart';
import 'package:github/model/git-ref_object.dart';
import 'package:github/model/git/create_tag_request.dart';
import 'package:github/model/git/create_tag_request_type.dart';
import 'package:github/model/git/create_tag_request_tagger.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-tag.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_object.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/git/create_tree_request.dart';
import 'package:github/model/git/create_tree_request_tree_inner.dart';
import 'package:github/model/git/create_tree_request_tree_inner_mode.dart';
import 'package:github/model/git/create_tree_request_tree_inner_type.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/git-tree.dart';
import 'package:github/model/git-tree_tree_inner.dart';
class GitApi {
    GitApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Short-blob> git/createBlob(
        String owner,
        String repo,
        Git/createBlobRequest git/createBlobRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/git/blobs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: git/createBlobRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Short-blob.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/createBlob');
    }
    Future<Blob> git/getBlob(
        String owner,
        String repo,
        String fileSha,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/blobs/{file_sha}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{file_sha}', "${ fileSha }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Blob.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/getBlob');
    }
    Future<Git-commit> git/createCommit(
        String owner,
        String repo,
        Git/createCommitRequest git/createCommitRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/git/commits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: git/createCommitRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/createCommit');
    }
    Future<Git-commit> git/getCommit(
        String owner,
        String repo,
        String commitSha,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/commits/{commit_sha}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{commit_sha}', "${ commitSha }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/getCommit');
    }
    Future<List<Git-ref>> git/listMatchingRefs(
        String owner,
        String repo,
        String ref,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/matching-refs/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Git-ref>((e) => Git-ref.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/listMatchingRefs');
    }
    Future<Git-ref> git/getRef(
        String owner,
        String repo,
        String ref,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/ref/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-ref.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/getRef');
    }
    Future<Git-ref> git/createRef(
        String owner,
        String repo,
        Git/createRefRequest git/createRefRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/git/refs'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: git/createRefRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-ref.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/createRef');
    }
    Future<void> git/deleteRef(
        String owner,
        String repo,
        String ref,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/git/refs/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/deleteRef');
    }
    Future<Git-ref> git/updateRef(
        String owner,
        String repo,
        String ref,
        Git/updateRefRequest git/updateRefRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/git/refs/{ref}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{ref}', "${ ref }")
            ,
            body: git/updateRefRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-ref.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/updateRef');
    }
    Future<Git-tag> git/createTag(
        String owner,
        String repo,
        Git/createTagRequest git/createTagRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/git/tags'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: git/createTagRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-tag.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/createTag');
    }
    Future<Git-tag> git/getTag(
        String owner,
        String repo,
        String tagSha,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/tags/{tag_sha}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{tag_sha}', "${ tagSha }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-tag.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/getTag');
    }
    Future<Git-tree> git/createTree(
        String owner,
        String repo,
        Git/createTreeRequest git/createTreeRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/git/trees'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: git/createTreeRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-tree.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/createTree');
    }
    Future<Git-tree> git/getTree(
        String owner,
        String repo,
        String treeSha,
        { String? recursive, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/git/trees/{tree_sha}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{tree_sha}', "${ treeSha }")
            ,
            queryParameters: {
                'recursive': ?recursive.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Git-tree.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $git/getTree');
    }
}
