import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/custom-property.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
@immutable
class Custom-property {
    Custom-property(
        { required this.property_name, this.url, this.source_type,required this.value_type, this.required_, this.default_value, this.description, this.allowed_values = const [], this.values_editable_by,
         }
    );

    factory Custom-property.fromJson(Map<String, dynamic>
        json) {
        return Custom-property(
            property_name: json['property_name'] as String ,
            url: json['url'] as String? ,
            source_type: Custom-propertySourceType.maybeFromJson(json['source_type'] as String?) ,
            value_type: Custom-propertyValueType.fromJson(json['value_type'] as String) ,
            required_: (json['required'] as bool?) ,
            default_value: Custom-propertyDefaultValue.maybeFromJson(json['default_value'] as dynamic),
            description: json['description'] as String? ,
            allowed_values: (json['allowed_values'] as List?)?.cast<String>() ,
            values_editable_by: Custom-propertyValuesEditableBy.maybeFromJson(json['values_editable_by'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Custom-property.fromJson(json);
    }

    final String  property_name;
    final  String? url;
    final  Custom-propertySourceType? source_type;
    final Custom-propertyValueType  value_type;
    final  bool? required_;
    final  Custom-propertyDefaultValue? default_value;
    final  String? description;
    final  List<String>? allowed_values;
    final  Custom-propertyValuesEditableBy? values_editable_by;


    Map<String, dynamic> toJson() {
        return {
            'property_name': property_name,
            'url': url,
            'source_type': source_type?.toJson(),
            'value_type': value_type.toJson(),
            'required': required_,
            'default_value': default_value?.toJson(),
            'description': description,
            'allowed_values': allowed_values,
            'values_editable_by': values_editable_by?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          property_name,
          url,
          source_type,
          value_type,
          required_,
          default_value,
          description,
          allowed_values,
          values_editable_by,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Custom-property
            && property_name == other.property_name
            && url == other.url
            && source_type == other.source_type
            && value_type == other.value_type
            && required_ == other.required_
            && default_value == other.default_value
            && description == other.description
            && listsEqual(allowed_values, other.allowed_values)
            && values_editable_by == other.values_editable_by
        ;
    }
}
