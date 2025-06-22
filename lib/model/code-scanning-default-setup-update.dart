import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-update.dart';
import 'package:github/model/code-scanning-default-setup-update_state.dart';
import 'package:github/model/code-scanning-default-setup-update_runner_type.dart';
import 'package:github/model/code-scanning-default-setup-update_query_suite.dart';
import 'package:github/model/code-scanning-default-setup-update_threat_model.dart';
import 'package:github/model/code-scanning-default-setup-update_languages_inner.dart';
import 'package:github/model/code-scanning-default-setup-update.dart';
import 'package:github/model/code-scanning-default-setup-update_state.dart';
import 'package:github/model/code-scanning-default-setup-update_runner_type.dart';
import 'package:github/model/code-scanning-default-setup-update_query_suite.dart';
import 'package:github/model/code-scanning-default-setup-update_threat_model.dart';
import 'package:github/model/code-scanning-default-setup-update_languages_inner.dart';
@immutable
class Code-scanning-default-setup-update {
    Code-scanning-default-setup-update(
        {  this.state, this.runner_type, this.runner_label, this.query_suite, this.threat_model, this.languages = const [],
         }
    );

    factory Code-scanning-default-setup-update.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-default-setup-update(
            state: Code-scanning-default-setup-updateState.maybeFromJson(json['state'] as String?) ,
            runner_type: Code-scanning-default-setup-updateRunnerType.maybeFromJson(json['runner_type'] as String?) ,
            runner_label: json['runner_label'] as String? ,
            query_suite: Code-scanning-default-setup-updateQuerySuite.maybeFromJson(json['query_suite'] as String?) ,
            threat_model: Code-scanning-default-setup-updateThreatModel.maybeFromJson(json['threat_model'] as String?) ,
            languages: (json['languages'] as List?)?.map<Code-scanning-default-setup-updateLanguagesInner>((e) => Code-scanning-default-setup-updateLanguagesInner.fromJson(e as String) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-update? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-update.fromJson(json);
    }

    final  Code-scanning-default-setup-updateState? state;
    final  Code-scanning-default-setup-updateRunnerType? runner_type;
    final  String? runner_label;
    final  Code-scanning-default-setup-updateQuerySuite? query_suite;
    final  Code-scanning-default-setup-updateThreatModel? threat_model;
    final  List<Code-scanning-default-setup-updateLanguagesInner>? languages;


    Map<String, dynamic> toJson() {
        return {
            'state': state?.toJson(),
            'runner_type': runner_type?.toJson(),
            'runner_label': runner_label,
            'query_suite': query_suite?.toJson(),
            'threat_model': threat_model?.toJson(),
            'languages': languages?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          runner_type,
          runner_label,
          query_suite,
          threat_model,
          languages,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-default-setup-update
            && state == other.state
            && runner_type == other.runner_type
            && runner_label == other.runner_label
            && query_suite == other.query_suite
            && threat_model == other.threat_model
            && listsEqual(languages, other.languages)
        ;
    }
}
