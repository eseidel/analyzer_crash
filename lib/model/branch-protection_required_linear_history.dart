import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
@immutable
class Branch-protectionRequiredLinearHistory {
    Branch-protectionRequiredLinearHistory(
        {  this.enabled,
         }
    );

    factory Branch-protectionRequiredLinearHistory.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionRequiredLinearHistory(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionRequiredLinearHistory? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionRequiredLinearHistory.fromJson(json);
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
        return other is Branch-protectionRequiredLinearHistory
            && enabled == other.enabled
        ;
    }
}
