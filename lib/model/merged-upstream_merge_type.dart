import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
enum Merged-upstreamMergeType {
    merge._('merge'),
    fast-forward._('fast-forward'),
    none._('none'),
    ;

    const Merged-upstreamMergeType._(this.value);

    factory Merged-upstreamMergeType.fromJson(String json) {
        return Merged-upstreamMergeType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Merged-upstreamMergeType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Merged-upstreamMergeType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Merged-upstreamMergeType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
