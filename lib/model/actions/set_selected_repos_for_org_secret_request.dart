import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_selected_repos_for_org_secret_request.dart';
import 'package:github/model/actions/set_selected_repos_for_org_secret_request.dart';
@immutable
class Actions&#x2F;setSelectedReposForOrgSecretRequest {
    Actions&#x2F;setSelectedReposForOrgSecretRequest(
        {  this.selected_repository_ids = const [],
         }
    );

    factory Actions&#x2F;setSelectedReposForOrgSecretRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setSelectedReposForOrgSecretRequest(
            selected_repository_ids: (json['selected_repository_ids'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setSelectedReposForOrgSecretRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setSelectedReposForOrgSecretRequest.fromJson(json);
    }

    final List<int>  selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
          selected_repository_ids.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setSelectedReposForOrgSecretRequest
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
