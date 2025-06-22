import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
@immutable
class Protected-branchRequiredLinearHistory {
    Protected-branchRequiredLinearHistory(
        { required this.enabled,
         }
    );

    factory Protected-branchRequiredLinearHistory.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchRequiredLinearHistory(
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchRequiredLinearHistory? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchRequiredLinearHistory.fromJson(json);
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
        return other is Protected-branchRequiredLinearHistory
            && enabled == other.enabled
        ;
    }
}
