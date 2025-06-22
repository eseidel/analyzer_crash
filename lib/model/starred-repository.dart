import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/starred-repository.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/starred-repository.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
@immutable
class Starred-repository {
    Starred-repository(
        { required this.starred_at,required this.repo,
         }
    );

    factory Starred-repository.fromJson(Map<String, dynamic>
        json) {
        return Starred-repository(
            starred_at: DateTime.parse(json['starred_at'] as String),
            repo: Repository.fromJson(json['repo'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Starred-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Starred-repository.fromJson(json);
    }

    final DateTime  starred_at;
    final Repository  repo;


    Map<String, dynamic> toJson() {
        return {
            'starred_at': starred_at.toIso8601String(),
            'repo': repo.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          starred_at,
          repo,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Starred-repository
            && starred_at == other.starred_at
            && repo == other.repo
        ;
    }
}
