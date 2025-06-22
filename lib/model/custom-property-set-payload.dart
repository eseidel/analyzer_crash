import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property-set-payload.dart';
import 'package:github/model/custom-property-set-payload_value_type.dart';
import 'package:github/model/custom-property-set-payload_default_value.dart';
import 'package:github/model/custom-property-set-payload_values_editable_by.dart';
import 'package:github/model/custom-property-set-payload.dart';
import 'package:github/model/custom-property-set-payload_value_type.dart';
import 'package:github/model/custom-property-set-payload_default_value.dart';
import 'package:github/model/custom-property-set-payload_values_editable_by.dart';
@immutable
class Custom-property-set-payload {
    Custom-property-set-payload(
        { required this.value_type, this.required_, this.default_value, this.description, this.allowed_values = const [], this.values_editable_by,
         }
    );

    factory Custom-property-set-payload.fromJson(Map<String, dynamic>
        json) {
        return Custom-property-set-payload(
            value_type: Custom-property-set-payloadValueType.fromJson(json['value_type'] as String) ,
            required_: (json['required'] as bool?) ,
            default_value: Custom-property-set-payloadDefaultValue.maybeFromJson(json['default_value'] as dynamic),
            description: json['description'] as String? ,
            allowed_values: (json['allowed_values'] as List?)?.cast<String>() ,
            values_editable_by: Custom-property-set-payloadValuesEditableBy.maybeFromJson(json['values_editable_by'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property-set-payload? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Custom-property-set-payload.fromJson(json);
    }

    final Custom-property-set-payloadValueType  value_type;
    final  bool? required_;
    final  Custom-property-set-payloadDefaultValue? default_value;
    final  String? description;
    final  List<String>? allowed_values;
    final  Custom-property-set-payloadValuesEditableBy? values_editable_by;


    Map<String, dynamic> toJson() {
        return {
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
        return other is Custom-property-set-payload
            && value_type == other.value_type
            && required_ == other.required_
            && default_value == other.default_value
            && description == other.description
            && listsEqual(allowed_values, other.allowed_values)
            && values_editable_by == other.values_editable_by
        ;
    }
}
