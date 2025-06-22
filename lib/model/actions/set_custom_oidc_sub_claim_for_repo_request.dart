import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_custom_oidc_sub_claim_for_repo_request.dart';
import 'package:github/model/actions/set_custom_oidc_sub_claim_for_repo_request.dart';
@immutable
class Actions&#x2F;setCustomOidcSubClaimForRepoRequest {
    Actions&#x2F;setCustomOidcSubClaimForRepoRequest(
        { required this.use_default, this.include_claim_keys = const [],
         }
    );

    factory Actions&#x2F;setCustomOidcSubClaimForRepoRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setCustomOidcSubClaimForRepoRequest(
            use_default: (json['use_default'] as bool) ,
            include_claim_keys: (json['include_claim_keys'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setCustomOidcSubClaimForRepoRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setCustomOidcSubClaimForRepoRequest.fromJson(json);
    }

    final bool  use_default;
    final  List<String>? include_claim_keys;


    Map<String, dynamic> toJson() {
        return {
            'use_default': use_default,
            'include_claim_keys': include_claim_keys,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          use_default,
          include_claim_keys,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setCustomOidcSubClaimForRepoRequest
            && use_default == other.use_default
            && listsEqual(include_claim_keys, other.include_claim_keys)
        ;
    }
}
