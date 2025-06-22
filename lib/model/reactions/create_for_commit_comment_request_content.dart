import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/reactions/create_for_commit_comment_request_content.dart';
import 'package:github/model/reactions/create_for_commit_comment_request_content.dart';
enum Reactions&#x2F;createForCommitCommentRequestContent {
    +1._('+1'),
    -1._('-1'),
    laugh._('laugh'),
    confused._('confused'),
    heart._('heart'),
    hooray._('hooray'),
    rocket._('rocket'),
    eyes._('eyes'),
    ;

    const Reactions&#x2F;createForCommitCommentRequestContent._(this.value);

    factory Reactions&#x2F;createForCommitCommentRequestContent.fromJson(String json) {
        return Reactions&#x2F;createForCommitCommentRequestContent.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Reactions&#x2F;createForCommitCommentRequestContent value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Reactions&#x2F;createForCommitCommentRequestContent? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Reactions&#x2F;createForCommitCommentRequestContent.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
