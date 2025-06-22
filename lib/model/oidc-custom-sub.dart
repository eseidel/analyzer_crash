import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/oidc-custom-sub.dart';
import 'package:github/model/oidc-custom-sub.dart';
@immutable
class Oidc-custom-sub {
    Oidc-custom-sub(
        {  this.include_claim_keys = const [],
         }
    );

    factory Oidc-custom-sub.fromJson(Map<String, dynamic>
        json) {
        return Oidc-custom-sub(
            include_claim_keys: (json['include_claim_keys'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Oidc-custom-sub? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Oidc-custom-sub.fromJson(json);
    }

    final List<String>  include_claim_keys;


    Map<String, dynamic> toJson() {
        return {
            'include_claim_keys': include_claim_keys,
        };
    }

    @override
    int get hashCode =>
          include_claim_keys.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Oidc-custom-sub
            && listsEqual(include_claim_keys, other.include_claim_keys)
        ;
    }
}
