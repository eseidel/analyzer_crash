import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
import 'package:github/model/dependabot-alert-with-repository_dependency_relationship.dart';
enum Dependabot-alert-with-repositoryDependencyRelationship {
    unknown._('unknown'),
    direct._('direct'),
    transitive._('transitive'),
    ;

    const Dependabot-alert-with-repositoryDependencyRelationship._(this.value);

    factory Dependabot-alert-with-repositoryDependencyRelationship.fromJson(String json) {
        return Dependabot-alert-with-repositoryDependencyRelationship.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-with-repositoryDependencyRelationship value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-with-repositoryDependencyRelationship? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-with-repositoryDependencyRelationship.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
