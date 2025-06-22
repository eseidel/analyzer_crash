import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec.dart';
import 'package:github/model/repository-ruleset-conditions-repository-property-spec_source.dart';
@immutable
class Repository-ruleset-conditions-repository-property-spec {
    Repository-ruleset-conditions-repository-property-spec(
        { required this.name, this.property_values = const [], this.source,
         }
    );

    factory Repository-ruleset-conditions-repository-property-spec.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditions-repository-property-spec(
            name: json['name'] as String ,
            property_values: (json['property_values'] as List).cast<String>() ,
            source: Repository-ruleset-conditions-repository-property-specSource.maybeFromJson(json['source'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions-repository-property-spec? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions-repository-property-spec.fromJson(json);
    }

    final String  name;
    final List<String>  property_values;
    final  Repository-ruleset-conditions-repository-property-specSource? source;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'property_values': property_values,
            'source': source?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          property_values,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditions-repository-property-spec
            && name == other.name
            && listsEqual(property_values, other.property_values)
            && source == other.source
        ;
    }
}
