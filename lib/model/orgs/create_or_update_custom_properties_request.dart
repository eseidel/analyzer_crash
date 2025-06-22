import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_request.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/orgs/create_or_update_custom_properties_request.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
@immutable
class Orgs&#x2F;createOrUpdateCustomPropertiesRequest {
    Orgs&#x2F;createOrUpdateCustomPropertiesRequest(
        {  this.properties = const [],
         }
    );

    factory Orgs&#x2F;createOrUpdateCustomPropertiesRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;createOrUpdateCustomPropertiesRequest(
            properties: (json['properties'] as List).map<Custom-property>((e) => Custom-property.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;createOrUpdateCustomPropertiesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;createOrUpdateCustomPropertiesRequest.fromJson(json);
    }

    final List<Custom-property>  properties;


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
        return other is Orgs&#x2F;createOrUpdateCustomPropertiesRequest
            && listsEqual(properties, other.properties)
        ;
    }
}
