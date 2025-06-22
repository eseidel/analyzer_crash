import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
enum Actions-hosted-runner-imageSource {
    github._('github'),
    partner._('partner'),
    custom._('custom'),
    ;

    const Actions-hosted-runner-imageSource._(this.value);

    factory Actions-hosted-runner-imageSource.fromJson(String json) {
        return Actions-hosted-runner-imageSource.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions-hosted-runner-imageSource value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner-imageSource? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner-imageSource.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
