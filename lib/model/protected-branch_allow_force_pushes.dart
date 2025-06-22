import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
@immutable
class Protected-branchAllowForcePushes {
    Protected-branchAllowForcePushes(
        { required this.enabled,
         }
    );

    factory Protected-branchAllowForcePushes.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchAllowForcePushes(
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchAllowForcePushes? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchAllowForcePushes.fromJson(json);
    }

    final bool  enabled;


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
        return other is Protected-branchAllowForcePushes
            && enabled == other.enabled
        ;
    }
}
