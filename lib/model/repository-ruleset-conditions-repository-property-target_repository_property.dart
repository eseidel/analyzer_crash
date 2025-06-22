import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-target_repository_property.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
@immutable
class Repository-ruleset-conditions-repository-property-targetRepositoryProperty {
    Repository-ruleset-conditions-repository-property-targetRepositoryProperty(
        {  this.include = const [], this.exclude = const [],
         }
    );

    factory Repository-ruleset-conditions-repository-property-targetRepositoryProperty.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditions-repository-property-targetRepositoryProperty(
            include: (json['include'] as List?)?.map<Repository-ruleset-conditions-repository-property-spec>((e) => Repository-ruleset-conditions-repository-property-spec.fromJson(e as Map<String, dynamic>) ).toList() ,
            exclude: (json['exclude'] as List?)?.map<Repository-ruleset-conditions-repository-property-spec>((e) => Repository-ruleset-conditions-repository-property-spec.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions-repository-property-targetRepositoryProperty? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions-repository-property-targetRepositoryProperty.fromJson(json);
    }

    final  List<Repository-ruleset-conditions-repository-property-spec>? include;
    final  List<Repository-ruleset-conditions-repository-property-spec>? exclude;


    Map<String, dynamic> toJson() {
        return {
            'include': include?.map((e) => e.toJson()).toList(),
            'exclude': exclude?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          include,
          exclude,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditions-repository-property-targetRepositoryProperty
            && listsEqual(include, other.include)
            && listsEqual(exclude, other.exclude)
        ;
    }
}
