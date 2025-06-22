import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
@immutable
class Rate-limit-overviewResources {
    Rate-limit-overviewResources(
        { required this.core, this.graphql,required this.search, this.code_search, this.source_import, this.integration_manifest, this.code_scanning_upload, this.actions_runner_registration, this.scim, this.dependency_snapshots, this.code_scanning_autofix,
         }
    );

    factory Rate-limit-overviewResources.fromJson(Map<String, dynamic>
        json) {
        return Rate-limit-overviewResources(
            core: Rate-limit.fromJson(json['core'] as Map<String, dynamic>) ,
            graphql: Rate-limit.maybeFromJson(json['graphql'] as Map<String, dynamic>?) ,
            search: Rate-limit.fromJson(json['search'] as Map<String, dynamic>) ,
            code_search: Rate-limit.maybeFromJson(json['code_search'] as Map<String, dynamic>?) ,
            source_import: Rate-limit.maybeFromJson(json['source_import'] as Map<String, dynamic>?) ,
            integration_manifest: Rate-limit.maybeFromJson(json['integration_manifest'] as Map<String, dynamic>?) ,
            code_scanning_upload: Rate-limit.maybeFromJson(json['code_scanning_upload'] as Map<String, dynamic>?) ,
            actions_runner_registration: Rate-limit.maybeFromJson(json['actions_runner_registration'] as Map<String, dynamic>?) ,
            scim: Rate-limit.maybeFromJson(json['scim'] as Map<String, dynamic>?) ,
            dependency_snapshots: Rate-limit.maybeFromJson(json['dependency_snapshots'] as Map<String, dynamic>?) ,
            code_scanning_autofix: Rate-limit.maybeFromJson(json['code_scanning_autofix'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rate-limit-overviewResources? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rate-limit-overviewResources.fromJson(json);
    }

    final Rate-limit  core;
    final  Rate-limit? graphql;
    final Rate-limit  search;
    final  Rate-limit? code_search;
    final  Rate-limit? source_import;
    final  Rate-limit? integration_manifest;
    final  Rate-limit? code_scanning_upload;
    final  Rate-limit? actions_runner_registration;
    final  Rate-limit? scim;
    final  Rate-limit? dependency_snapshots;
    final  Rate-limit? code_scanning_autofix;


    Map<String, dynamic> toJson() {
        return {
            'core': core.toJson(),
            'graphql': graphql?.toJson(),
            'search': search.toJson(),
            'code_search': code_search?.toJson(),
            'source_import': source_import?.toJson(),
            'integration_manifest': integration_manifest?.toJson(),
            'code_scanning_upload': code_scanning_upload?.toJson(),
            'actions_runner_registration': actions_runner_registration?.toJson(),
            'scim': scim?.toJson(),
            'dependency_snapshots': dependency_snapshots?.toJson(),
            'code_scanning_autofix': code_scanning_autofix?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          core,
          graphql,
          search,
          code_search,
          source_import,
          integration_manifest,
          code_scanning_upload,
          actions_runner_registration,
          scim,
          dependency_snapshots,
          code_scanning_autofix,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rate-limit-overviewResources
            && core == other.core
            && graphql == other.graphql
            && search == other.search
            && code_search == other.code_search
            && source_import == other.source_import
            && integration_manifest == other.integration_manifest
            && code_scanning_upload == other.code_scanning_upload
            && actions_runner_registration == other.actions_runner_registration
            && scim == other.scim
            && dependency_snapshots == other.dependency_snapshots
            && code_scanning_autofix == other.code_scanning_autofix
        ;
    }
}
