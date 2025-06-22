import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
@immutable
class Nullable-repositoryCodeSearchIndexStatus {
    Nullable-repositoryCodeSearchIndexStatus(
        {  this.lexical_search_ok, this.lexical_commit_sha,
         }
    );

    factory Nullable-repositoryCodeSearchIndexStatus.fromJson(Map<String, dynamic>
        json) {
        return Nullable-repositoryCodeSearchIndexStatus(
            lexical_search_ok: (json['lexical_search_ok'] as bool?) ,
            lexical_commit_sha: json['lexical_commit_sha'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-repositoryCodeSearchIndexStatus? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-repositoryCodeSearchIndexStatus.fromJson(json);
    }

    final  bool? lexical_search_ok;
    final  String? lexical_commit_sha;


    Map<String, dynamic> toJson() {
        return {
            'lexical_search_ok': lexical_search_ok,
            'lexical_commit_sha': lexical_commit_sha,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          lexical_search_ok,
          lexical_commit_sha,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-repositoryCodeSearchIndexStatus
            && lexical_search_ok == other.lexical_search_ok
            && lexical_commit_sha == other.lexical_commit_sha
        ;
    }
}
