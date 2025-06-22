import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-suite-preference_preferences_auto_trigger_checks_inner.dart';
import 'package:github/model/check-suite-preference_preferences_auto_trigger_checks_inner.dart';
@immutable
class Check-suite-preferencePreferencesAutoTriggerChecksInner {
    Check-suite-preferencePreferencesAutoTriggerChecksInner(
        { required this.app_id,required this.setting,
         }
    );

    factory Check-suite-preferencePreferencesAutoTriggerChecksInner.fromJson(Map<String, dynamic>
        json) {
        return Check-suite-preferencePreferencesAutoTriggerChecksInner(
            app_id: (json['app_id'] as int).toInt() ,
            setting: (json['setting'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-suite-preferencePreferencesAutoTriggerChecksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-suite-preferencePreferencesAutoTriggerChecksInner.fromJson(json);
    }

    final int  app_id;
    final bool  setting;


    Map<String, dynamic> toJson() {
        return {
            'app_id': app_id,
            'setting': setting,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          app_id,
          setting,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-suite-preferencePreferencesAutoTriggerChecksInner
            && app_id == other.app_id
            && setting == other.setting
        ;
    }
}
