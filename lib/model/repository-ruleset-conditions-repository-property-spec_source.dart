import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
enum Repository-ruleset-conditions-repository-property-specSource {
    custom._('custom'),
    system._('system'),
    ;

    const Repository-ruleset-conditions-repository-property-specSource._(this.value);

    factory Repository-ruleset-conditions-repository-property-specSource.fromJson(String json) {
        return Repository-ruleset-conditions-repository-property-specSource.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-ruleset-conditions-repository-property-specSource value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions-repository-property-specSource? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions-repository-property-specSource.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
