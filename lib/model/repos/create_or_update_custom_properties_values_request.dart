import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_custom_properties_values_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/repos/create_or_update_custom_properties_values_request.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
@immutable
class Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest {
    Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest(
        {  this.properties = const [],
         }
    );

    factory Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest(
            properties: (json['properties'] as List).map<Custom-property-value>((e) => Custom-property-value.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest.fromJson(json);
    }

    final List<Custom-property-value>  properties;


    Map<String, dynamic> toJson() {
        return {
            'properties': properties.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          properties.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createOrUpdateCustomPropertiesValuesRequest
            && listsEqual(properties, other.properties)
        ;
    }
}
