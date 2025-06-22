import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
import 'package:github/model/code-scanning-default-setup.dart';
import 'package:github/model/code-scanning-default-setup_state.dart';
import 'package:github/model/code-scanning-default-setup_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup_runner_type.dart';
import 'package:github/model/code-scanning-default-setup_query_suite.dart';
import 'package:github/model/code-scanning-default-setup_threat_model.dart';
import 'package:github/model/code-scanning-default-setup_schedule.dart';
@immutable
class Code-scanning-default-setup {
    Code-scanning-default-setup(
        {  this.state, this.languages = const [], this.runner_type, this.runner_label, this.query_suite, this.threat_model, this.updated_at, this.schedule,
         }
    );

    factory Code-scanning-default-setup.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-default-setup(
            state: Code-scanning-default-setupState.maybeFromJson(json['state'] as String?) ,
            languages: (json['languages'] as List?)?.map<Code-scanning-default-setupLanguagesInner>((e) => Code-scanning-default-setupLanguagesInner.fromJson(e as String) ).toList() ,
            runner_type: Code-scanning-default-setupRunnerType.maybeFromJson(json['runner_type'] as String?) ,
            runner_label: json['runner_label'] as String? ,
            query_suite: Code-scanning-default-setupQuerySuite.maybeFromJson(json['query_suite'] as String?) ,
            threat_model: Code-scanning-default-setupThreatModel.maybeFromJson(json['threat_model'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            schedule: Code-scanning-default-setupSchedule.maybeFromJson(json['schedule'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup.fromJson(json);
    }

    final  Code-scanning-default-setupState? state;
    final  List<Code-scanning-default-setupLanguagesInner>? languages;
    final  Code-scanning-default-setupRunnerType? runner_type;
    final  String? runner_label;
    final  Code-scanning-default-setupQuerySuite? query_suite;
    final  Code-scanning-default-setupThreatModel? threat_model;
    final  DateTime? updated_at;
    final  Code-scanning-default-setupSchedule? schedule;


    Map<String, dynamic> toJson() {
        return {
            'state': state?.toJson(),
            'languages': languages?.map((e) => e.toJson()).toList(),
            'runner_type': runner_type?.toJson(),
            'runner_label': runner_label,
            'query_suite': query_suite?.toJson(),
            'threat_model': threat_model?.toJson(),
            'updated_at': updated_at?.toIso8601String(),
            'schedule': schedule?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          languages,
          runner_type,
          runner_label,
          query_suite,
          threat_model,
          updated_at,
          schedule,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-default-setup
            && state == other.state
            && listsEqual(languages, other.languages)
            && runner_type == other.runner_type
            && runner_label == other.runner_label
            && query_suite == other.query_suite
            && threat_model == other.threat_model
            && updated_at == other.updated_at
            && schedule == other.schedule
        ;
    }
}
