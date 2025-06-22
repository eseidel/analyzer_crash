import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/dependency-graph-diff_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependency-graph-diff_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_change_type.dart';
import 'package:github/model/dependency-graph-diff_inner_vulnerabilities_inner.dart';
import 'package:github/model/dependency-graph-diff_inner_scope.dart';
import 'package:github/model/dependency-graph-spdx-sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/dependency-graph-spdx-sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
import 'package:github/model/snapshot.dart';
import 'package:github/model/snapshot_job.dart';
import 'package:github/model/snapshot_detector.dart';
import 'package:github/model/dependency_graph/create_repository_snapshot201_response.dart';
import 'package:github/model/dependency_graph/create_repository_snapshot201_response.dart';
class Dependency-graphApi {
    Dependency-graphApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Dependency-graph-diffInner>> dependencyGraph/diffRange(
        String owner,
        String repo,
        String basehead,
        { String? name, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependency-graph/compare/{basehead}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{basehead}', "${ basehead }")
            ,
            queryParameters: {
                'name': ?name.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Dependency-graph-diffInner>((e) => Dependency-graph-diffInner.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependencyGraph/diffRange');
    }
    Future<Dependency-graph-spdx-sbom> dependencyGraph/exportSbom(
        String owner,
        String repo,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/dependency-graph/sbom'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Dependency-graph-spdx-sbom.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependencyGraph/exportSbom');
    }
    Future<DependencyGraph/createRepositorySnapshot201Response> dependencyGraph/createRepositorySnapshot(
        String owner,
        String repo,
        Snapshot snapshot,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/dependency-graph/snapshots'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: snapshot.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return DependencyGraph/createRepositorySnapshot201Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $dependencyGraph/createRepositorySnapshot');
    }
}
