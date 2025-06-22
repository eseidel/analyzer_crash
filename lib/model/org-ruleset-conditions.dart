import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/org-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
@immutable
class Org-ruleset-conditions {
    Org-ruleset-conditions(
        {  this.ref_name, this.repository_property,
         }
    );

    factory Org-ruleset-conditions.fromJson(Map<String, dynamic>
        json) {
        return Org-ruleset-conditions(
            ref_name: Repository-ruleset-conditionsRefName.maybeFromJson(json['ref_name'] as Map<String, dynamic>?) ,
            repository_property: Repository-ruleset-conditions-repository-property-targetRepositoryProperty.maybeFromJson(json['repository_property'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-ruleset-conditions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-ruleset-conditions.fromJson(json);
    }

    final  Repository-ruleset-conditionsRefName? ref_name;
    final  Repository-ruleset-conditions-repository-property-targetRepositoryProperty? repository_property;


    Map<String, dynamic> toJson() {
        return {
            'ref_name': ref_name?.toJson(),
            'repository_property': repository_property?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref_name,
          repository_property,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-ruleset-conditions
            && ref_name == other.ref_name
            && repository_property == other.repository_property
        ;
    }
}
