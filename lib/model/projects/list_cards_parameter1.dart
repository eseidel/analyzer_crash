import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/list_cards_parameter1.dart';
import 'package:github/model/projects/list_cards_parameter1.dart';
enum Projects&#x2F;listCardsParameter1 {
    all._('all'),
    archived._('archived'),
    notArchived._('not_archived'),
    ;

    const Projects&#x2F;listCardsParameter1._(this.value);

    factory Projects&#x2F;listCardsParameter1.fromJson(String json) {
        return Projects&#x2F;listCardsParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Projects&#x2F;listCardsParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;listCardsParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;listCardsParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
