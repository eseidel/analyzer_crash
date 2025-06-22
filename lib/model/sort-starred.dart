import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/sort-starred.dart';
import 'package:github/model/sort-starred.dart';
enum Sort-starred {
    created._('created'),
    updated._('updated'),
    ;

    const Sort-starred._(this.value);

    factory Sort-starred.fromJson(String json) {
        return Sort-starred.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Sort-starred value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Sort-starred? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Sort-starred.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
