import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
@immutable
class Branch-protectionAllowForkSyncing {
    Branch-protectionAllowForkSyncing(
        {  this.enabled = false,
         }
    );

    factory Branch-protectionAllowForkSyncing.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionAllowForkSyncing(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionAllowForkSyncing? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionAllowForkSyncing.fromJson(json);
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
        return other is Branch-protectionAllowForkSyncing
            && enabled == other.enabled
        ;
    }
}
