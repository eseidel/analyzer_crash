import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_scope.dart';
enum Dependabot-alert-with-repositoryDependencyScope {
    development._('development'),
    runtime._('runtime'),
    ;

    const Dependabot-alert-with-repositoryDependencyScope._(this.value);

    factory Dependabot-alert-with-repositoryDependencyScope.fromJson(String json) {
        return Dependabot-alert-with-repositoryDependencyScope.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-with-repositoryDependencyScope value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-with-repositoryDependencyScope? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-with-repositoryDependencyScope.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
