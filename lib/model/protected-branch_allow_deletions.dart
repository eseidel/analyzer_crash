import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
@immutable
class Protected-branchAllowDeletions {
    Protected-branchAllowDeletions(
        { required this.enabled,
         }
    );

    factory Protected-branchAllowDeletions.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchAllowDeletions(
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchAllowDeletions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchAllowDeletions.fromJson(json);
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
        return other is Protected-branchAllowDeletions
            && enabled == other.enabled
        ;
    }
}
