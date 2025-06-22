import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_tag_request_type.dart';
import 'package:github/model/git/create_tag_request_type.dart';
enum Git&#x2F;createTagRequestType {
    commit._('commit'),
    tree._('tree'),
    blob._('blob'),
    ;

    const Git&#x2F;createTagRequestType._(this.value);

    factory Git&#x2F;createTagRequestType.fromJson(String json) {
        return Git&#x2F;createTagRequestType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Git&#x2F;createTagRequestType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createTagRequestType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createTagRequestType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
