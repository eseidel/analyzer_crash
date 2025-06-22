import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-suite-preference_preferences.dart';
import 'package:github/model/check-suite-preference_preferences_auto_trigger_checks_inner.dart';
import 'package:github/model/check-suite-preference_preferences.dart';
import 'package:github/model/check-suite-preference_preferences_auto_trigger_checks_inner.dart';
@immutable
class Check-suite-preferencePreferences {
    Check-suite-preferencePreferences(
        {  this.auto_trigger_checks = const [],
         }
    );

    factory Check-suite-preferencePreferences.fromJson(Map<String, dynamic>
        json) {
        return Check-suite-preferencePreferences(
            auto_trigger_checks: (json['auto_trigger_checks'] as List?)?.map<Check-suite-preferencePreferencesAutoTriggerChecksInner>((e) => Check-suite-preferencePreferencesAutoTriggerChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-suite-preferencePreferences? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-suite-preferencePreferences.fromJson(json);
    }

    final  List<Check-suite-preferencePreferencesAutoTriggerChecksInner>? auto_trigger_checks;


    Map<String, dynamic> toJson() {
        return {
            'auto_trigger_checks': auto_trigger_checks?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          auto_trigger_checks.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-suite-preferencePreferences
            && listsEqual(auto_trigger_checks, other.auto_trigger_checks)
        ;
    }
}
