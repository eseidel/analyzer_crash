import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/list_parameter3.dart';
import 'package:github/model/issues/list_parameter3.dart';
enum Issues&#x2F;listParameter3 {
    created._('created'),
    updated._('updated'),
    comments._('comments'),
    ;

    const Issues&#x2F;listParameter3._(this.value);

    factory Issues&#x2F;listParameter3.fromJson(String json) {
        return Issues&#x2F;listParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Issues&#x2F;listParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;listParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;listParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
