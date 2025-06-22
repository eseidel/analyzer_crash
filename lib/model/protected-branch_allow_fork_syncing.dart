import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
@immutable
class Protected-branchAllowForkSyncing {
    Protected-branchAllowForkSyncing(
        {  this.enabled = false,
         }
    );

    factory Protected-branchAllowForkSyncing.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchAllowForkSyncing(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchAllowForkSyncing? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchAllowForkSyncing.fromJson(json);
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
        return other is Protected-branchAllowForkSyncing
            && enabled == other.enabled
        ;
    }
}
