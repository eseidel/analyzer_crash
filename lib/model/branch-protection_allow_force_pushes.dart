import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
@immutable
class Branch-protectionAllowForcePushes {
    Branch-protectionAllowForcePushes(
        {  this.enabled,
         }
    );

    factory Branch-protectionAllowForcePushes.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionAllowForcePushes(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionAllowForcePushes? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionAllowForcePushes.fromJson(json);
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
        return other is Branch-protectionAllowForcePushes
            && enabled == other.enabled
        ;
    }
}
