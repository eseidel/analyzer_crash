import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry_status.dart';
enum Diff-entryStatus {
    added._('added'),
    removed._('removed'),
    modified._('modified'),
    renamed._('renamed'),
    copied._('copied'),
    changed._('changed'),
    unchanged._('unchanged'),
    ;

    const Diff-entryStatus._(this.value);

    factory Diff-entryStatus.fromJson(String json) {
        return Diff-entryStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Diff-entryStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Diff-entryStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Diff-entryStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
