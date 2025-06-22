import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
import 'package:github/model/repository-ruleset-conditions-repository-id-target_repository_id.dart';
@immutable
class Repository-ruleset-conditions-repository-id-targetRepositoryId {
    Repository-ruleset-conditions-repository-id-targetRepositoryId(
        {  this.repository_ids = const [],
         }
    );

    factory Repository-ruleset-conditions-repository-id-targetRepositoryId.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-conditions-repository-id-targetRepositoryId(
            repository_ids: (json['repository_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-conditions-repository-id-targetRepositoryId? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-conditions-repository-id-targetRepositoryId.fromJson(json);
    }

    final  List<int>? repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'repository_ids': repository_ids,
        };
    }

    @override
    int get hashCode =>
          repository_ids.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-conditions-repository-id-targetRepositoryId
            && listsEqual(repository_ids, other.repository_ids)
        ;
    }
}
