import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_identifiers_inner_type.dart';
@immutable
class Dependabot-alert-security-advisoryIdentifiersInner {
    Dependabot-alert-security-advisoryIdentifiersInner(
        { required this.type,required this.value,
         }
    );

    factory Dependabot-alert-security-advisoryIdentifiersInner.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-security-advisoryIdentifiersInner(
            type: Dependabot-alert-security-advisoryIdentifiersInnerType.fromJson(json['type'] as String) ,
            value: json['value'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisoryIdentifiersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisoryIdentifiersInner.fromJson(json);
    }

    final Dependabot-alert-security-advisoryIdentifiersInnerType  type;
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
        return other is Dependabot-alert-security-advisoryIdentifiersInner
            && type == other.type
            && value == other.value
        ;
    }
}
