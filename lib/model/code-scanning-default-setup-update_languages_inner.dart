import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-update_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup-update_languages_inner.dart';
enum Code-scanning-default-setup-updateLanguagesInner {
    actions._('actions'),
    c-cpp._('c-cpp'),
    csharp._('csharp'),
    go._('go'),
    java-kotlin._('java-kotlin'),
    javascript-typescript._('javascript-typescript'),
    python._('python'),
    ruby._('ruby'),
    swift._('swift'),
    ;

    const Code-scanning-default-setup-updateLanguagesInner._(this.value);

    factory Code-scanning-default-setup-updateLanguagesInner.fromJson(String json) {
        return Code-scanning-default-setup-updateLanguagesInner.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-default-setup-updateLanguagesInner value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-updateLanguagesInner? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-updateLanguagesInner.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
