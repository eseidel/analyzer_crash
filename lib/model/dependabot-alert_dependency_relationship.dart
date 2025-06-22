import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
enum Dependabot-alertDependencyRelationship {
    unknown._('unknown'),
    direct._('direct'),
    transitive._('transitive'),
    ;

    const Dependabot-alertDependencyRelationship._(this.value);

    factory Dependabot-alertDependencyRelationship.fromJson(String json) {
        return Dependabot-alertDependencyRelationship.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alertDependencyRelationship value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alertDependencyRelationship? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alertDependencyRelationship.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
