import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
import 'package:github/model/authentication-token.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/authentication-token_repository_selection.dart';
@immutable
class Authentication-token {
    Authentication-token(
        { required this.token,required this.expires_at, this.permissions, this.repositories = const [], this.single_file, this.repository_selection,
         }
    );

    factory Authentication-token.fromJson(Map<String, dynamic>
        json) {
        return Authentication-token(
            token: json['token'] as String ,
            expires_at: DateTime.parse(json['expires_at'] as String),
            permissions: json['permissions'],
            repositories: (json['repositories'] as List?)?.map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
            single_file: json['single_file'] as String? ,
            repository_selection: Authentication-tokenRepositorySelection.maybeFromJson(json['repository_selection'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Authentication-token? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Authentication-token.fromJson(json);
    }

    final String  token;
    final DateTime  expires_at;
    final  dynamic? permissions;
    final  List<Repository>? repositories;
    final  String? single_file;
    final  Authentication-tokenRepositorySelection? repository_selection;


    Map<String, dynamic> toJson() {
        return {
            'token': token,
            'expires_at': expires_at.toIso8601String(),
            'permissions': permissions,
            'repositories': repositories?.map((e) => e.toJson()).toList(),
            'single_file': single_file,
            'repository_selection': repository_selection?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          token,
          expires_at,
          permissions,
          repositories,
          single_file,
          repository_selection,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Authentication-token
            && token == other.token
            && expires_at == other.expires_at
            && identical(permissions, other.permissions)
            && listsEqual(repositories, other.repositories)
            && single_file == other.single_file
            && repository_selection == other.repository_selection
        ;
    }
}
