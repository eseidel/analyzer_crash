import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/custom-property-value.dart';
import 'package:github/model/custom-property-value_value.dart';
@immutable
class Custom-property-value {
    Custom-property-value(
        { required this.property_name,required this.value,
         }
    );

    factory Custom-property-value.fromJson(Map<String, dynamic>
        json) {
        return Custom-property-value(
            property_name: json['property_name'] as String ,
            value: Custom-property-valueValue.fromJson(json['value'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property-value? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Custom-property-value.fromJson(json);
    }

    final String  property_name;
    final Custom-property-valueValue  value;


    Map<String, dynamic> toJson() {
        return {
            'property_name': property_name,
            'value': value.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          property_name,
          value,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Custom-property-value
            && property_name == other.property_name
            && value == other.value
        ;
    }
}
