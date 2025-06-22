import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
enum Dependabot-alertDependencyScope {
    development._('development'),
    runtime._('runtime'),
    ;

    const Dependabot-alertDependencyScope._(this.value);

    factory Dependabot-alertDependencyScope.fromJson(String json) {
        return Dependabot-alertDependencyScope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alertDependencyScope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alertDependencyScope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alertDependencyScope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
