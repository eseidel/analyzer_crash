import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/reaction_content.dart';
import 'package:github/model/reaction_content.dart';
enum ReactionContent {
    +1._('+1'),
    -1._('-1'),
    laugh._('laugh'),
    confused._('confused'),
    heart._('heart'),
    hooray._('hooray'),
    rocket._('rocket'),
    eyes._('eyes'),
    ;

    const ReactionContent._(this.value);

    factory ReactionContent.fromJson(String json) {
        return ReactionContent.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown ReactionContent value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static ReactionContent? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return ReactionContent.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
