import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy-name-pattern.dart';
import 'package:github/model/deployment-branch-policy-name-pattern.dart';
@immutable
class Deployment-branch-policy-name-pattern {
    Deployment-branch-policy-name-pattern(
        { required this.name,
         }
    );

    factory Deployment-branch-policy-name-pattern.fromJson(Map<String, dynamic>
        json) {
        return Deployment-branch-policy-name-pattern(
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policy-name-pattern? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policy-name-pattern.fromJson(json);
    }

    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
        };
    }

    @override
    int get hashCode =>
          name.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-branch-policy-name-pattern
            && name == other.name
        ;
    }
}
