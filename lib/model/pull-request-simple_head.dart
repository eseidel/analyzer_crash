import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Pull-request-simpleHead {
    Pull-request-simpleHead(
        { required this.label,required this.ref,required this.repo,required this.sha,required this.user,
         }
    );

    factory Pull-request-simpleHead.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-simpleHead(
            label: json['label'] as String ,
            ref: json['ref'] as String ,
            repo: Repository.fromJson(json['repo'] as Map<String, dynamic>) ,
            sha: json['sha'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-simpleHead? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-simpleHead.fromJson(json);
    }

    final String  label;
    final String  ref;
    final Repository  repo;
    final String  sha;
    final Nullable-simple-user  user;


    Map<String, dynamic> toJson() {
        return {
            'label': label,
            'ref': ref,
            'repo': repo.toJson(),
            'sha': sha,
            'user': user.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          label,
          ref,
          repo,
          sha,
          user,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-simpleHead
            && label == other.label
            && ref == other.ref
            && repo == other.repo
            && sha == other.sha
            && user == other.user
        ;
    }
}
