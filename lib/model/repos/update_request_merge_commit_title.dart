import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_request_merge_commit_title.dart';
import 'package:github/model/repos/update_request_merge_commit_title.dart';
enum Repos&#x2F;updateRequestMergeCommitTitle {
    prTitle._('PR_TITLE'),
    mergeMessage._('MERGE_MESSAGE'),
    ;

    const Repos&#x2F;updateRequestMergeCommitTitle._(this.value);

    factory Repos&#x2F;updateRequestMergeCommitTitle.fromJson(String json) {
        return Repos&#x2F;updateRequestMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;updateRequestMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateRequestMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateRequestMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
