import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
import 'package:github/model/repository-ruleset-conditions-repository-name-target_repository_name.dart';
@immutable
class Repository-ruleset-conditions-repository-name-targetRepositoryName {
    Repository-ruleset-conditions-repository-name-targetRepositoryName(
        {  this.include = const [], this.exclude = const [], this.protected,
         }
    );

    factory Repository-ruleset-conditions-repository-name-targetRepositoryName.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditions-repository-name-targetRepositoryName(
            include: (json['include'] as List?)?.cast<String>() ,
            exclude: (json['exclude'] as List?)?.cast<String>() ,
            protected: (json['protected'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions-repository-name-targetRepositoryName? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions-repository-name-targetRepositoryName.fromJson(json);
    }

    final  List<String>? include;
    final  List<String>? exclude;
    final  bool? protected;


    Map<String, dynamic> toJson() {
        return {
            'include': include,
            'exclude': exclude,
            'protected': protected,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          include,
          exclude,
          protected,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditions-repository-name-targetRepositoryName
            && listsEqual(include, other.include)
            && listsEqual(exclude, other.exclude)
            && protected == other.protected
        ;
    }
}
