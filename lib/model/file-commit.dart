import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
import 'package:github/model/file-commit.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_commit.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_tree.dart';
import 'package:github/model/file-commit_commit_parents_inner.dart';
import 'package:github/model/file-commit_commit_verification.dart';
@immutable
class File-commit {
    File-commit(
        { required this.content,required this.commit,
         }
    );

    factory File-commit.fromJson(Map<String, dynamic>
        json) {
        return File-commit(
            content: File-commitContent.fromJson(json['content'] as Map<String, dynamic>) ,
            commit: File-commitCommit.fromJson(json['commit'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commit.fromJson(json);
    }

    final File-commitContent  content;
    final File-commitCommit  commit;


    Map<String, dynamic> toJson() {
        return {
            'content': content.toJson(),
            'commit': commit.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          content,
          commit,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commit
            && content == other.content
            && commit == other.commit
        ;
    }
}
