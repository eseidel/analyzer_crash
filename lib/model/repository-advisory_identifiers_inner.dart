import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
import 'package:github/model/repository-advisory_identifiers_inner.dart';
import 'package:github/model/repository-advisory_identifiers_inner_type.dart';
@immutable
class Repository-advisoryIdentifiersInner {
    Repository-advisoryIdentifiersInner(
        { required this.type,required this.value,
         }
    );

    factory Repository-advisoryIdentifiersInner.fromJson(Map<String, dynamic>
        json) {
        return Repository-advisoryIdentifiersInner(
            type: Repository-advisoryIdentifiersInnerType.fromJson(json['type'] as String) ,
            value: json['value'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisoryIdentifiersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisoryIdentifiersInner.fromJson(json);
    }

    final Repository-advisoryIdentifiersInnerType  type;
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
        return other is Repository-advisoryIdentifiersInner
            && type == other.type
            && value == other.value
        ;
    }
}
