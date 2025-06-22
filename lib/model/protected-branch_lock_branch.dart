import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
@immutable
class Protected-branchLockBranch {
    Protected-branchLockBranch(
        {  this.enabled = false,
         }
    );

    factory Protected-branchLockBranch.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchLockBranch(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchLockBranch? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchLockBranch.fromJson(json);
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
        return other is Protected-branchLockBranch
            && enabled == other.enabled
        ;
    }
}
