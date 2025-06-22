import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_values_for_repos_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_values_for_repos_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
@immutable
class Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest {
    Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest(
        {  this.repository_names = const [], this.properties = const [],
         }
    );

    factory Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest(
            repository_names: (json['repository_names'] as List).cast<String>() ,
            properties: (json['properties'] as List).map<Custom-property-value>((e) => Custom-property-value.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest.fromJson(json);
    }

    final List<String>  repository_names;
    final List<Custom-property-value>  properties;


    Map<String, dynamic> toJson() {
        return {
            'repository_names': repository_names,
            'properties': properties.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_names,
          properties,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;createOrUpdateCustomPropertiesValuesForReposRequest
            && listsEqual(repository_names, other.repository_names)
            && listsEqual(properties, other.properties)
        ;
    }
}
