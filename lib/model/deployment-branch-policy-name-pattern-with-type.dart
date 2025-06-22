import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type_type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type.dart';
import 'package:github/model/deployment-branch-policy-name-pattern-with-type_type.dart';
@immutable
class Deployment-branch-policy-name-pattern-with-type {
    Deployment-branch-policy-name-pattern-with-type(
        { required this.name, this.type,
         }
    );

    factory Deployment-branch-policy-name-pattern-with-type.fromJson(Map<String, dynamic>
        json) {
        return Deployment-branch-policy-name-pattern-with-type(
            name: json['name'] as String ,
            type: Deployment-branch-policy-name-pattern-with-typeType.maybeFromJson(json['type'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policy-name-pattern-with-type? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policy-name-pattern-with-type.fromJson(json);
    }

    final String  name;
    final  Deployment-branch-policy-name-pattern-with-typeType? type;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'type': type?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-branch-policy-name-pattern-with-type
            && name == other.name
            && type == other.type
        ;
    }
}
