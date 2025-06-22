import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
import 'package:github/model/repository-ruleset-conditions_ref_name.dart';
@immutable
class Repository-ruleset-conditionsRefName {
    Repository-ruleset-conditionsRefName(
        {  this.include = const [], this.exclude = const [],
         }
    );

    factory Repository-ruleset-conditionsRefName.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditionsRefName(
            include: (json['include'] as List?)?.cast<String>() ,
            exclude: (json['exclude'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditionsRefName? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditionsRefName.fromJson(json);
    }

    final  List<String>? include;
    final  List<String>? exclude;


    Map<String, dynamic> toJson() {
        return {
            'include': include,
            'exclude': exclude,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          include,
          exclude,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditionsRefName
            && listsEqual(include, other.include)
            && listsEqual(exclude, other.exclude)
        ;
    }
}
