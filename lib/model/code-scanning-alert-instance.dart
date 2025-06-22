import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
import 'package:github/model/code-scanning-alert-instance.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-alert-state.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-location.dart';
import 'package:github/model/code-scanning-alert-classification.dart';
@immutable
class Code-scanning-alert-instance {
    Code-scanning-alert-instance(
        {  this.ref, this.analysis_key, this.environment, this.category, this.state, this.commit_sha, this.message, this.location, this.html_url, this.classifications = const [],
         }
    );

    factory Code-scanning-alert-instance.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-alert-instance(
            ref: Code-scanning-ref((json['ref'] as String?) ),
            analysis_key: Code-scanning-analysis-analysis-key((json['analysis_key'] as String?) ),
            environment: Code-scanning-alert-environment((json['environment'] as String?) ),
            category: Code-scanning-analysis-category((json['category'] as String?) ),
            state: Code-scanning-alert-state.maybeFromJson(json['state'] as String?) ,
            commit_sha: json['commit_sha'] as String? ,
            message: Code-scanning-alert-instanceMessage.maybeFromJson(json['message'] as Map<String, dynamic>?) ,
            location: Code-scanning-alert-location.maybeFromJson(json['location'] as Map<String, dynamic>?) ,
            html_url: json['html_url'] as String? ,
            classifications: (json['classifications'] as List?)?.map<Code-scanning-alert-classification>((e) => Code-scanning-alert-classification.fromJson(e as String) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-instance? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-instance.fromJson(json);
    }

    final  Code-scanning-ref? ref;
    final  Code-scanning-analysis-analysis-key? analysis_key;
    final  Code-scanning-alert-environment? environment;
    final  Code-scanning-analysis-category? category;
    final  Code-scanning-alert-state? state;
    final  String? commit_sha;
    final  Code-scanning-alert-instanceMessage? message;
    final  Code-scanning-alert-location? location;
    final  String? html_url;
    final  List<Code-scanning-alert-classification>? classifications;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref?.toJson(),
            'analysis_key': analysis_key?.toJson(),
            'environment': environment?.toJson(),
            'category': category?.toJson(),
            'state': state?.toJson(),
            'commit_sha': commit_sha,
            'message': message?.toJson(),
            'location': location?.toJson(),
            'html_url': html_url,
            'classifications': classifications?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          analysis_key,
          environment,
          category,
          state,
          commit_sha,
          message,
          location,
          html_url,
          classifications,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-alert-instance
            && ref == other.ref
            && analysis_key == other.analysis_key
            && environment == other.environment
            && category == other.category
            && state == other.state
            && commit_sha == other.commit_sha
            && message == other.message
            && location == other.location
            && html_url == other.html_url
            && listsEqual(classifications, other.classifications)
        ;
    }
}
