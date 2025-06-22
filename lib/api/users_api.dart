import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/users/get_authenticated200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/get_authenticated200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/users/update_authenticated_request.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
import 'package:github/model/email.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/email.dart';
import 'package:github/model/email.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/email.dart';
import 'package:github/model/users/add_email_for_authenticated_user_request.dart';
import 'package:github/model/users/add_email_for_authenticated_user_request.dart';
import 'package:github/model/email.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/email.dart';
import 'package:github/model/users/delete_email_for_authenticated_user_request.dart';
import 'package:github/model/users/delete_email_for_authenticated_user_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/users/create_gpg_key_for_authenticated_user_request.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/key.dart';
import 'package:github/model/users/create_public_ssh_key_for_authenticated_user_request.dart';
import 'package:github/model/key.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/key.dart';
import 'package:github/model/key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/email.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/email.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/users/add_social_account_for_authenticated_user_request.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/users/delete_social_account_for_authenticated_user_request.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/users/create_ssh_signing_key_for_authenticated_user_request.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/get_by_id200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/get_by_id200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/users/get_by_username200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/get_by_username200_response.dart';
import 'package:github/model/private-user.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/public-user.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/users/delete_attestations_bulk_request.dart';
import 'package:github/model/users/delete_attestations_bulk_request.dart';
import 'package:github/model/users/delete_attestations_bulk_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/list_attestations200_response.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/users/list_attestations_response.dart';
import 'package:github/model/users/list_attestations200_response.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner.dart';
import 'package:github/model/users/list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/hovercard.dart';
import 'package:github/model/hovercard_contexts_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/users/get_context_for_user_parameter1.dart';
import 'package:github/model/hovercard.dart';
import 'package:github/model/hovercard_contexts_inner.dart';
import 'package:github/model/key-simple.dart';
import 'package:github/model/key-simple.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/ssh-signing-key.dart';
class UsersApi {
    UsersApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<Users/getAuthenticated200Response> users/getAuthenticated(
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user'
,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Users/getAuthenticated200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getAuthenticated');
    }
    Future<Private-user> users/updateAuthenticated(
        { Users/updateAuthenticatedRequest? users/updateAuthenticatedRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/user'
,
            body: users/updateAuthenticatedRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Private-user.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/updateAuthenticated');
    }
    Future<List<Simple-user>> users/listBlockedByAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/blocks'
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listBlockedByAuthenticatedUser');
    }
    Future<void> users/checkBlocked(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/blocks/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/checkBlocked');
    }
    Future<void> users/block(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/blocks/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/block');
    }
    Future<void> users/unblock(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/blocks/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/unblock');
    }
    Future<List<Email>> users/setPrimaryEmailVisibilityForAuthenticatedUser(
        Users/setPrimaryEmailVisibilityForAuthenticatedUserRequest users/setPrimaryEmailVisibilityForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/user/email/visibility'
,
            body: users/setPrimaryEmailVisibilityForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Email>((e) => Email.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/setPrimaryEmailVisibilityForAuthenticatedUser');
    }
    Future<List<Email>> users/listEmailsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/emails'
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
            return (jsonDecode(response.body) as List).map<Email>((e) => Email.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listEmailsForAuthenticatedUser');
    }
    Future<List<Email>> users/addEmailForAuthenticatedUser(
        { Users/addEmailForAuthenticatedUserRequest? users/addEmailForAuthenticatedUserRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/emails'
,
            body: users/addEmailForAuthenticatedUserRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Email>((e) => Email.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/addEmailForAuthenticatedUser');
    }
    Future<void> users/deleteEmailForAuthenticatedUser(
        { Users/deleteEmailForAuthenticatedUserRequest? users/deleteEmailForAuthenticatedUserRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/emails'
,
            body: users/deleteEmailForAuthenticatedUserRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteEmailForAuthenticatedUser');
    }
    Future<List<Simple-user>> users/listFollowersForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/followers'
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listFollowersForAuthenticatedUser');
    }
    Future<List<Simple-user>> users/listFollowedByAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/following'
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listFollowedByAuthenticatedUser');
    }
    Future<void> users/checkPersonIsFollowedByAuthenticated(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/following/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/checkPersonIsFollowedByAuthenticated');
    }
    Future<void> users/follow(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/user/following/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/follow');
    }
    Future<void> users/unfollow(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/following/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/unfollow');
    }
    Future<List<Gpg-key>> users/listGpgKeysForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/gpg_keys'
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
            return (jsonDecode(response.body) as List).map<Gpg-key>((e) => Gpg-key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listGpgKeysForAuthenticatedUser');
    }
    Future<Gpg-key> users/createGpgKeyForAuthenticatedUser(
        Users/createGpgKeyForAuthenticatedUserRequest users/createGpgKeyForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/gpg_keys'
,
            body: users/createGpgKeyForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gpg-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/createGpgKeyForAuthenticatedUser');
    }
    Future<Gpg-key> users/getGpgKeyForAuthenticatedUser(
        int gpgKeyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/gpg_keys/{gpg_key_id}'
            .replaceAll('{gpg_key_id}', "${ gpgKeyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Gpg-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getGpgKeyForAuthenticatedUser');
    }
    Future<void> users/deleteGpgKeyForAuthenticatedUser(
        int gpgKeyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/gpg_keys/{gpg_key_id}'
            .replaceAll('{gpg_key_id}', "${ gpgKeyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteGpgKeyForAuthenticatedUser');
    }
    Future<List<Key>> users/listPublicSshKeysForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/keys'
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
            return (jsonDecode(response.body) as List).map<Key>((e) => Key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listPublicSshKeysForAuthenticatedUser');
    }
    Future<Key> users/createPublicSshKeyForAuthenticatedUser(
        Users/createPublicSshKeyForAuthenticatedUserRequest users/createPublicSshKeyForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/keys'
,
            body: users/createPublicSshKeyForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/createPublicSshKeyForAuthenticatedUser');
    }
    Future<Key> users/getPublicSshKeyForAuthenticatedUser(
        int keyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/keys/{key_id}'
            .replaceAll('{key_id}', "${ keyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getPublicSshKeyForAuthenticatedUser');
    }
    Future<void> users/deletePublicSshKeyForAuthenticatedUser(
        int keyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/keys/{key_id}'
            .replaceAll('{key_id}', "${ keyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deletePublicSshKeyForAuthenticatedUser');
    }
    Future<List<Email>> users/listPublicEmailsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/public_emails'
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
            return (jsonDecode(response.body) as List).map<Email>((e) => Email.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listPublicEmailsForAuthenticatedUser');
    }
    Future<List<Social-account>> users/listSocialAccountsForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/social_accounts'
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
            return (jsonDecode(response.body) as List).map<Social-account>((e) => Social-account.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listSocialAccountsForAuthenticatedUser');
    }
    Future<List<Social-account>> users/addSocialAccountForAuthenticatedUser(
        Users/addSocialAccountForAuthenticatedUserRequest users/addSocialAccountForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/social_accounts'
,
            body: users/addSocialAccountForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Social-account>((e) => Social-account.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/addSocialAccountForAuthenticatedUser');
    }
    Future<void> users/deleteSocialAccountForAuthenticatedUser(
        Users/deleteSocialAccountForAuthenticatedUserRequest users/deleteSocialAccountForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/social_accounts'
,
            body: users/deleteSocialAccountForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteSocialAccountForAuthenticatedUser');
    }
    Future<List<Ssh-signing-key>> users/listSshSigningKeysForAuthenticatedUser(
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/ssh_signing_keys'
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
            return (jsonDecode(response.body) as List).map<Ssh-signing-key>((e) => Ssh-signing-key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listSshSigningKeysForAuthenticatedUser');
    }
    Future<Ssh-signing-key> users/createSshSigningKeyForAuthenticatedUser(
        Users/createSshSigningKeyForAuthenticatedUserRequest users/createSshSigningKeyForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/ssh_signing_keys'
,
            body: users/createSshSigningKeyForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Ssh-signing-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/createSshSigningKeyForAuthenticatedUser');
    }
    Future<Ssh-signing-key> users/getSshSigningKeyForAuthenticatedUser(
        int sshSigningKeyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/ssh_signing_keys/{ssh_signing_key_id}'
            .replaceAll('{ssh_signing_key_id}', "${ sshSigningKeyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Ssh-signing-key.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getSshSigningKeyForAuthenticatedUser');
    }
    Future<void> users/deleteSshSigningKeyForAuthenticatedUser(
        int sshSigningKeyId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/user/ssh_signing_keys/{ssh_signing_key_id}'
            .replaceAll('{ssh_signing_key_id}', "${ sshSigningKeyId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteSshSigningKeyForAuthenticatedUser');
    }
    Future<Users/getById200Response> users/getById(
        int accountId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/user/{account_id}'
            .replaceAll('{account_id}', "${ accountId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Users/getById200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getById');
    }
    Future<List<Simple-user>> users/list(
        { int? since,int? perPage = 30, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users'
,
            queryParameters: {
                'since': ?since.toString(),
                'per_page': ?perPage.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/list');
    }
    Future<Users/getByUsername200Response> users/getByUsername(
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}'
            .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Users/getByUsername200Response.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getByUsername');
    }
    Future<void> users/deleteAttestationsBulk(
        String username,
        Users/deleteAttestationsBulkRequest users/deleteAttestationsBulkRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/users/{username}/attestations/delete-request'
            .replaceAll('{username}', "${ username }")
            ,
            body: users/deleteAttestationsBulkRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteAttestationsBulk');
    }
    Future<void> users/deleteAttestationsBySubjectDigest(
        String username,
        String subjectDigest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/users/{username}/attestations/digest/{subject_digest}'
            .replaceAll('{username}', "${ username }")
                        .replaceAll('{subject_digest}', "${ subjectDigest }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteAttestationsBySubjectDigest');
    }
    Future<void> users/deleteAttestationsById(
        String username,
        int attestationId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/users/{username}/attestations/{attestation_id}'
            .replaceAll('{username}', "${ username }")
                        .replaceAll('{attestation_id}', "${ attestationId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/deleteAttestationsById');
    }
    Future<Users/listAttestationsResponse> users/listAttestations(
        String username,
        String subjectDigest,
        { int? perPage = 30,String? before,String? after,String? predicateType, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/attestations/{subject_digest}'
            .replaceAll('{username}', "${ username }")
                        .replaceAll('{subject_digest}', "${ subjectDigest }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'before': ?before.toString(),
                'after': ?after.toString(),
                'predicate_type': ?predicateType.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Users/listAttestationsResponse.fromJson(jsonDecode(response.body) as dynamic);
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listAttestations');
    }
    Future<List<Simple-user>> users/listFollowersForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/followers'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listFollowersForUser');
    }
    Future<List<Simple-user>> users/listFollowingForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/following'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listFollowingForUser');
    }
    Future<void> users/checkFollowingForUser(
        String username,
        String targetUser,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/following/{target_user}'
            .replaceAll('{username}', "${ username }")
                        .replaceAll('{target_user}', "${ targetUser }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/checkFollowingForUser');
    }
    Future<List<Gpg-key>> users/listGpgKeysForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/gpg_keys'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Gpg-key>((e) => Gpg-key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listGpgKeysForUser');
    }
    Future<Hovercard> users/getContextForUser(
        String username,
        { Users/getContextForUserParameter1? subjectType,String? subjectId, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/hovercard'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'subject_type': ?subjectType?.toJson().toString(),
                'subject_id': ?subjectId.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Hovercard.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/getContextForUser');
    }
    Future<List<Key-simple>> users/listPublicKeysForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/keys'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Key-simple>((e) => Key-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listPublicKeysForUser');
    }
    Future<List<Social-account>> users/listSocialAccountsForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/social_accounts'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Social-account>((e) => Social-account.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listSocialAccountsForUser');
    }
    Future<List<Ssh-signing-key>> users/listSshSigningKeysForUser(
        String username,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/ssh_signing_keys'
            .replaceAll('{username}', "${ username }")
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
            return (jsonDecode(response.body) as List).map<Ssh-signing-key>((e) => Ssh-signing-key.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $users/listSshSigningKeysForUser');
    }
}
