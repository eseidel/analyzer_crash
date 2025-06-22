import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
enum Nullable-actions-hosted-runner-pool-imageSource {
    github._('github'),
    partner._('partner'),
    custom._('custom'),
    ;

    const Nullable-actions-hosted-runner-pool-imageSource._(this.value);

    factory Nullable-actions-hosted-runner-pool-imageSource.fromJson(String json) {
        return Nullable-actions-hosted-runner-pool-imageSource.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-actions-hosted-runner-pool-imageSource value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-actions-hosted-runner-pool-imageSource? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-actions-hosted-runner-pool-imageSource.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
