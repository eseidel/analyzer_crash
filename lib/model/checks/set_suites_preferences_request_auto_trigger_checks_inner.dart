import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/set_suites_preferences_request_auto_trigger_checks_inner.dart';
import 'package:github/model/checks/set_suites_preferences_request_auto_trigger_checks_inner.dart';
@immutable
class Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner {
    Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner(
        { required this.app_id, this.setting = true,
         }
    );

    factory Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner(
            app_id: (json['app_id'] as int).toInt() ,
            setting: (json['setting'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner.fromJson(json);
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
        return other is Checks&#x2F;setSuitesPreferencesRequestAutoTriggerChecksInner
            && app_id == other.app_id
            && setting == other.setting
        ;
    }
}
