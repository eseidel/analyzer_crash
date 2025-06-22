import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
@immutable
class Repository-ruleset-conditions {
    Repository-ruleset-conditions(
        {  this.ref_name,
         }
    );

    factory Repository-ruleset-conditions.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditions(
            ref_name: Repository-ruleset-conditionsRefName.maybeFromJson(json['ref_name'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions.fromJson(json);
    }

    final  Repository-ruleset-conditionsRefName? ref_name;


    Map<String, dynamic> toJson() {
        return {
            'ref_name': ref_name?.toJson(),
        };
    }

    @override
    int get hashCode =>
          ref_name.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditions
            && ref_name == other.ref_name
        ;
    }
}
