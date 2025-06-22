import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/projects/list_for_org_parameter1.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/projects/create_for_org_request.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/projects/delete_card403_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/update_card_request.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/projects/move_card_request.dart';
import 'package:github/model/projects/move_card403_response.dart';
import 'package:github/model/projects/move_card403_response_errors_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/move_card503_response.dart';
import 'package:github/model/projects/move_card503_response_errors_inner.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/update_column_request.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/list_cards_parameter1.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/projects/create_card_request.dart';
import 'package:github/model/projects/create_card_request.dart';
import 'package:github/model/projects/create_card_request.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/create_card422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/projects/create_card503_response.dart';
import 'package:github/model/projects/create_card503_response_errors_inner.dart';
import 'package:github/model/project-card.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/projects/move_column_request.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/projects/delete403_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/update_request.dart';
import 'package:github/model/projects/update_request_organization_permission.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/projects/update403_response.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/projects/list_collaborators_parameter1.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/projects/add_collaborator_request.dart';
import 'package:github/model/projects/add_collaborator_request_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-collaborator-permission.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-collaborator-permission.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/projects/create_column_request.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/project-column.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/projects/list_for_repo_parameter2.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/projects/create_for_repo_request.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/projects/create_for_authenticated_user_request.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/projects/list_for_user_parameter1.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
class ProjectsApi {
    ProjectsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Project>> projects/listForOrg(
        String org,
        { Projects/listForOrgParameter1? state = Projects/listForOrgParameter1.open,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/orgs/{org}/projects'
            .replaceAll('{org}', "${ org }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Project>((e) => Project.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listForOrg');
    }
    Future<Project> projects/createForOrg(
        String org,
        Projects/createForOrgRequest projects/createForOrgRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/orgs/{org}/projects'
            .replaceAll('{org}', "${ org }")
            ,
            body: projects/createForOrgRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/createForOrg');
    }
    Future<Project-card> projects/getCard(
        int cardId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/columns/cards/{card_id}'
            .replaceAll('{card_id}', "${ cardId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-card.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/getCard');
    }
    Future<void> projects/deleteCard(
        int cardId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/projects/columns/cards/{card_id}'
            .replaceAll('{card_id}', "${ cardId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/deleteCard');
    }
    Future<Project-card> projects/updateCard(
        int cardId,
        { Projects/updateCardRequest? projects/updateCardRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/projects/columns/cards/{card_id}'
            .replaceAll('{card_id}', "${ cardId }")
            ,
            body: projects/updateCardRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-card.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/updateCard');
    }
    Future<Projects/moveCard201Response> projects/moveCard(
        int cardId,
        Projects/moveCardRequest projects/moveCardRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/projects/columns/cards/{card_id}/moves'
            .replaceAll('{card_id}', "${ cardId }")
            ,
            body: projects/moveCardRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/moveCard');
    }
    Future<Project-column> projects/getColumn(
        int columnId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/columns/{column_id}'
            .replaceAll('{column_id}', "${ columnId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-column.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/getColumn');
    }
    Future<void> projects/deleteColumn(
        int columnId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/projects/columns/{column_id}'
            .replaceAll('{column_id}', "${ columnId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/deleteColumn');
    }
    Future<Project-column> projects/updateColumn(
        int columnId,
        Projects/updateColumnRequest projects/updateColumnRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/projects/columns/{column_id}'
            .replaceAll('{column_id}', "${ columnId }")
            ,
            body: projects/updateColumnRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-column.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/updateColumn');
    }
    Future<List<Project-card>> projects/listCards(
        int columnId,
        { Projects/listCardsParameter1? archivedState = Projects/listCardsParameter1.notArchived,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/columns/{column_id}/cards'
            .replaceAll('{column_id}', "${ columnId }")
            ,
            queryParameters: {
                'archived_state': ?archivedState?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Project-card>((e) => Project-card.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listCards');
    }
    Future<Project-card> projects/createCard(
        int columnId,
        Projects/createCardRequest projects/createCardRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/projects/columns/{column_id}/cards'
            .replaceAll('{column_id}', "${ columnId }")
            ,
            body: projects/createCardRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-card.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/createCard');
    }
    Future<Projects/moveColumn201Response> projects/moveColumn(
        int columnId,
        Projects/moveColumnRequest projects/moveColumnRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/projects/columns/{column_id}/moves'
            .replaceAll('{column_id}', "${ columnId }")
            ,
            body: projects/moveColumnRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return throw UnimplementedError("RenderEmptyObject.fromJson");
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/moveColumn');
    }
    Future<Project> projects/get(
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/{project_id}'
            .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/get');
    }
    Future<void> projects/delete(
        int projectId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/projects/{project_id}'
            .replaceAll('{project_id}', "${ projectId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/delete');
    }
    Future<Project> projects/update(
        int projectId,
        { Projects/updateRequest? projects/updateRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/projects/{project_id}'
            .replaceAll('{project_id}', "${ projectId }")
            ,
            body: projects/updateRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/update');
    }
    Future<List<Simple-user>> projects/listCollaborators(
        int projectId,
        { Projects/listCollaboratorsParameter1? affiliation = Projects/listCollaboratorsParameter1.all,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/{project_id}/collaborators'
            .replaceAll('{project_id}', "${ projectId }")
            ,
            queryParameters: {
                'affiliation': ?affiliation?.toJson().toString(),
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

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listCollaborators');
    }
    Future<void> projects/addCollaborator(
        int projectId,
        String username,
        { Projects/addCollaboratorRequest? projects/addCollaboratorRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/projects/{project_id}/collaborators/{username}'
            .replaceAll('{project_id}', "${ projectId }")
                        .replaceAll('{username}', "${ username }")
            ,
            body: projects/addCollaboratorRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/addCollaborator');
    }
    Future<void> projects/removeCollaborator(
        int projectId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/projects/{project_id}/collaborators/{username}'
            .replaceAll('{project_id}', "${ projectId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/removeCollaborator');
    }
    Future<Project-collaborator-permission> projects/getPermissionForUser(
        int projectId,
        String username,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/{project_id}/collaborators/{username}/permission'
            .replaceAll('{project_id}', "${ projectId }")
                        .replaceAll('{username}', "${ username }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-collaborator-permission.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/getPermissionForUser');
    }
    Future<List<Project-column>> projects/listColumns(
        int projectId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/projects/{project_id}/columns'
            .replaceAll('{project_id}', "${ projectId }")
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
            return (jsonDecode(response.body) as List).map<Project-column>((e) => Project-column.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listColumns');
    }
    Future<Project-column> projects/createColumn(
        int projectId,
        Projects/createColumnRequest projects/createColumnRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/projects/{project_id}/columns'
            .replaceAll('{project_id}', "${ projectId }")
            ,
            body: projects/createColumnRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project-column.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/createColumn');
    }
    Future<List<Project>> projects/listForRepo(
        String owner,
        String repo,
        { Projects/listForRepoParameter2? state = Projects/listForRepoParameter2.open,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/projects'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Project>((e) => Project.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listForRepo');
    }
    Future<Project> projects/createForRepo(
        String owner,
        String repo,
        Projects/createForRepoRequest projects/createForRepoRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/projects'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: projects/createForRepoRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/createForRepo');
    }
    Future<Project> projects/createForAuthenticatedUser(
        Projects/createForAuthenticatedUserRequest projects/createForAuthenticatedUserRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/user/projects'
,
            body: projects/createForAuthenticatedUserRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Project.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/createForAuthenticatedUser');
    }
    Future<List<Project>> projects/listForUser(
        String username,
        { Projects/listForUserParameter1? state = Projects/listForUserParameter1.open,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/users/{username}/projects'
            .replaceAll('{username}', "${ username }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Project>((e) => Project.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $projects/listForUser');
    }
}
