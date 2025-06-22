import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_enforcement.dart';
import 'package:github/model/code-security-configuration_enforcement.dart';
enum Code-security-configurationEnforcement {
    enforced._('enforced'),
    unenforced._('unenforced'),
    ;

    const Code-security-configurationEnforcement._(this.value);

    factory Code-security-configurationEnforcement.fromJson(String json) {
        return Code-security-configurationEnforcement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configurationEnforcement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationEnforcement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationEnforcement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
