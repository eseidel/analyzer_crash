import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
import 'package:github/model/global-advisory_identifiers_inner.dart';
import 'package:github/model/global-advisory_identifiers_inner_type.dart';
@immutable
class Global-advisoryIdentifiersInner {
    Global-advisoryIdentifiersInner(
        { required this.type,required this.value,
         }
    );

    factory Global-advisoryIdentifiersInner.fromJson(Map<String, dynamic>
        json) {
        return Global-advisoryIdentifiersInner(
            type: Global-advisoryIdentifiersInnerType.fromJson(json['type'] as String) ,
            value: json['value'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisoryIdentifiersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Global-advisoryIdentifiersInner.fromJson(json);
    }

    final Global-advisoryIdentifiersInnerType  type;
    final String  value;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'value': value,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          value,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Global-advisoryIdentifiersInner
            && type == other.type
            && value == other.value
        ;
    }
}
