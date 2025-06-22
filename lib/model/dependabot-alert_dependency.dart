import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
import 'package:github/model/dependabot-alert_dependency.dart';
import 'package:github/model/dependabot-alert-package.dart';
import 'package:github/model/dependabot-alert_dependency_scope.dart';
import 'package:github/model/dependabot-alert_dependency_relationship.dart';
@immutable
class Dependabot-alertDependency {
    Dependabot-alertDependency(
        {  this.package, this.manifest_path, this.scope, this.relationship,
         }
    );

    factory Dependabot-alertDependency.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alertDependency(
            package: Dependabot-alert-package.maybeFromJson(json['package'] as Map<String, dynamic>?) ,
            manifest_path: json['manifest_path'] as String? ,
            scope: Dependabot-alertDependencyScope.maybeFromJson(json['scope'] as String?) ,
            relationship: Dependabot-alertDependencyRelationship.maybeFromJson(json['relationship'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alertDependency? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alertDependency.fromJson(json);
    }

    final  Dependabot-alert-package? package;
    final  String? manifest_path;
    final  Dependabot-alertDependencyScope? scope;
    final  Dependabot-alertDependencyRelationship? relationship;


    Map<String, dynamic> toJson() {
        return {
            'package': package?.toJson(),
            'manifest_path': manifest_path,
            'scope': scope?.toJson(),
            'relationship': relationship?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          package,
          manifest_path,
          scope,
          relationship,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alertDependency
            && package == other.package
            && manifest_path == other.manifest_path
            && scope == other.scope
            && relationship == other.relationship
        ;
    }
}
