import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/oidc-custom-sub-repo.dart';
import 'package:github/model/oidc-custom-sub-repo.dart';
@immutable
class Oidc-custom-sub-repo {
    Oidc-custom-sub-repo(
        { required this.use_default, this.include_claim_keys = const [],
         }
    );

    factory Oidc-custom-sub-repo.fromJson(Map<String, dynamic>
        json) {
        return Oidc-custom-sub-repo(
            use_default: (json['use_default'] as bool) ,
            include_claim_keys: (json['include_claim_keys'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Oidc-custom-sub-repo? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Oidc-custom-sub-repo.fromJson(json);
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
        return other is Oidc-custom-sub-repo
            && use_default == other.use_default
            && listsEqual(include_claim_keys, other.include_claim_keys)
        ;
    }
}
