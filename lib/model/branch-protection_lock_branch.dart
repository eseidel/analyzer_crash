import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
@immutable
class Branch-protectionLockBranch {
    Branch-protectionLockBranch(
        {  this.enabled = false,
         }
    );

    factory Branch-protectionLockBranch.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionLockBranch(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionLockBranch? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionLockBranch.fromJson(json);
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
        return other is Branch-protectionLockBranch
            && enabled == other.enabled
        ;
    }
}
