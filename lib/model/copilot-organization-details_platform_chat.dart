import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
import 'package:github/model/copilot-organization-details_platform_chat.dart';
enum Copilot-organization-detailsPlatformChat {
    enabled._('enabled'),
    disabled._('disabled'),
    unconfigured._('unconfigured'),
    ;

    const Copilot-organization-detailsPlatformChat._(this.value);

    factory Copilot-organization-detailsPlatformChat.fromJson(String json) {
        return Copilot-organization-detailsPlatformChat.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Copilot-organization-detailsPlatformChat value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-organization-detailsPlatformChat? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Copilot-organization-detailsPlatformChat.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
