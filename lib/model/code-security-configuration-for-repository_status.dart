import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration-for-repository_status.dart';
import 'package:github/model/code-security-configuration-for-repository_status.dart';
enum Code-security-configuration-for-repositoryStatus {
    attached._('attached'),
    attaching._('attaching'),
    detached._('detached'),
    removed._('removed'),
    enforced._('enforced'),
    failed._('failed'),
    updating._('updating'),
    removedByEnterprise._('removed_by_enterprise'),
    ;

    const Code-security-configuration-for-repositoryStatus._(this.value);

    factory Code-security-configuration-for-repositoryStatus.fromJson(String json) {
        return Code-security-configuration-for-repositoryStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-security-configuration-for-repositoryStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configuration-for-repositoryStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configuration-for-repositoryStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
