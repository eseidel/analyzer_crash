import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-automated-security-fixes.dart';
import 'package:github/model/check-automated-security-fixes.dart';
@immutable
class Check-automated-security-fixes {
    Check-automated-security-fixes(
        { required this.enabled,required this.paused,
         }
    );

    factory Check-automated-security-fixes.fromJson(Map<String, dynamic>
        json) {
        return Check-automated-security-fixes(
            enabled: (json['enabled'] as bool) ,
            paused: (json['paused'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-automated-security-fixes? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-automated-security-fixes.fromJson(json);
    }

    final bool  enabled;
    final bool  paused;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
            'paused': paused,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled,
          paused,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-automated-security-fixes
            && enabled == other.enabled
            && paused == other.paused
        ;
    }
}
