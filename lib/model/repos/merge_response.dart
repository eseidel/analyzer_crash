import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/merge_response.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/repos/merge_response.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';

sealed class Repos&#x2F;mergeResponse {
    static Repos&#x2F;mergeResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;mergeResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;mergeResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;mergeResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
