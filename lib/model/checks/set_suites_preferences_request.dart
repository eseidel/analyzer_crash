import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/set_suites_preferences_request.dart';
import 'package:github/model/checks/set_suites_preferences_request_auto_trigger_checks_inner.dart';
import 'package:github/model/checks/set_suites_preferences_request.dart';
import 'package:github/model/checks/set_suites_preferences_request_auto_trigger_checks_inner.dart';
@immutable
class Checks&#x2F;setSuitesPreferencesRequest {
    Checks&#x2F;setSuitesPreferencesRequest(
        {  this.auto_trigger_checks = const [],
         }
    );

    factory Checks&#x2F;setSuitesPreferencesRequest.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;setSuitesPreferencesRequest(
            auto_trigger_checks: (json['auto_trigger_checks'] as List?)?.map<Checks/setSuitesPreferencesRequestAutoTriggerChecksInner>((e) => Checks/setSuitesPreferencesRequestAutoTriggerChecksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;setSuitesPreferencesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;setSuitesPreferencesRequest.fromJson(json);
    }

    final  List<Checks/setSuitesPreferencesRequestAutoTriggerChecksInner>? auto_trigger_checks;


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
        return other is Checks&#x2F;setSuitesPreferencesRequest
            && listsEqual(auto_trigger_checks, other.auto_trigger_checks)
        ;
    }
}
