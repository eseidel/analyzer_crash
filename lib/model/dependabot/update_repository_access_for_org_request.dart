import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/update_repository_access_for_org_request.dart';
import 'package:github/model/dependabot/update_repository_access_for_org_request.dart';
@immutable
class Dependabot&#x2F;updateRepositoryAccessForOrgRequest {
    Dependabot&#x2F;updateRepositoryAccessForOrgRequest(
        {  this.repository_ids_to_add = const [], this.repository_ids_to_remove = const [],
         }
    );

    factory Dependabot&#x2F;updateRepositoryAccessForOrgRequest.fromJson(Map<String, dynamic>
        json) {
        return Dependabot&#x2F;updateRepositoryAccessForOrgRequest(
            repository_ids_to_add: (json['repository_ids_to_add'] as List?)?.cast<int>() ,
            repository_ids_to_remove: (json['repository_ids_to_remove'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;updateRepositoryAccessForOrgRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;updateRepositoryAccessForOrgRequest.fromJson(json);
    }

    final  List<int>? repository_ids_to_add;
    final  List<int>? repository_ids_to_remove;


    Map<String, dynamic> toJson() {
        return {
            'repository_ids_to_add': repository_ids_to_add,
            'repository_ids_to_remove': repository_ids_to_remove,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          repository_ids_to_add,
          repository_ids_to_remove,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot&#x2F;updateRepositoryAccessForOrgRequest
            && listsEqual(repository_ids_to_add, other.repository_ids_to_add)
            && listsEqual(repository_ids_to_remove, other.repository_ids_to_remove)
        ;
    }
}
