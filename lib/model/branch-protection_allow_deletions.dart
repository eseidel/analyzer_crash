import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
@immutable
class Branch-protectionAllowDeletions {
    Branch-protectionAllowDeletions(
        {  this.enabled,
         }
    );

    factory Branch-protectionAllowDeletions.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionAllowDeletions(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionAllowDeletions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionAllowDeletions.fromJson(json);
    }

    final  bool? enabled;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
        };
    }

    @override
    int get hashCode =>
          enabled.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-protectionAllowDeletions
            && enabled == other.enabled
        ;
    }
}
