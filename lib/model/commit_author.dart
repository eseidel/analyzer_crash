import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';

sealed class CommitAuthor {
  static CommitAuthor fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('CommitAuthor.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitAuthor? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return CommitAuthor.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
