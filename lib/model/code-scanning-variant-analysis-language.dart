import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
import 'package:github/model/code-scanning-variant-analysis-language.dart';
enum Code-scanning-variant-analysis-language {
    cpp._('cpp'),
    csharp._('csharp'),
    go._('go'),
    java._('java'),
    javascript._('javascript'),
    python._('python'),
    ruby._('ruby'),
    rust._('rust'),
    swift._('swift'),
    ;

    const Code-scanning-variant-analysis-language._(this.value);

    factory Code-scanning-variant-analysis-language.fromJson(String json) {
        return Code-scanning-variant-analysis-language.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-variant-analysis-language value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis-language? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis-language.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
