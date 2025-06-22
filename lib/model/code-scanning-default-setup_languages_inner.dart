import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
enum Code-scanning-default-setupLanguagesInner {
    actions._('actions'),
    c-cpp._('c-cpp'),
    csharp._('csharp'),
    go._('go'),
    java-kotlin._('java-kotlin'),
    javascript-typescript._('javascript-typescript'),
    javascript._('javascript'),
    python._('python'),
    ruby._('ruby'),
    typescript._('typescript'),
    swift._('swift'),
    ;

    const Code-scanning-default-setupLanguagesInner._(this.value);

    factory Code-scanning-default-setupLanguagesInner.fromJson(String json) {
        return Code-scanning-default-setupLanguagesInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setupLanguagesInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setupLanguagesInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setupLanguagesInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
