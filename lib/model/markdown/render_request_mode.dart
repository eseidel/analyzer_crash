import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/markdown/render_request_mode.dart';
import 'package:github/model/markdown/render_request_mode.dart';
enum Markdown&#x2F;renderRequestMode {
    markdown._('markdown'),
    gfm._('gfm'),
    ;

    const Markdown&#x2F;renderRequestMode._(this.value);

    factory Markdown&#x2F;renderRequestMode.fromJson(String json) {
        return Markdown&#x2F;renderRequestMode.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Markdown&#x2F;renderRequestMode value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Markdown&#x2F;renderRequestMode? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Markdown&#x2F;renderRequestMode.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
