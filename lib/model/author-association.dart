import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/author-association.dart';
enum Author-association {
    collaborator._('COLLABORATOR'),
    contributor._('CONTRIBUTOR'),
    firstTimer._('FIRST_TIMER'),
    firstTimeContributor._('FIRST_TIME_CONTRIBUTOR'),
    mannequin._('MANNEQUIN'),
    member._('MEMBER'),
    none._('NONE'),
    owner._('OWNER'),
    ;

    const Author-association._(this.value);

    factory Author-association.fromJson(String json) {
        return Author-association.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Author-association value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Author-association? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Author-association.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
