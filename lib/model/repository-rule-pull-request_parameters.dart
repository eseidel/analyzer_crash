import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
import 'package:github/model/repository-rule-pull-request_parameters.dart';
import 'package:github/model/repository-rule-pull-request_parameters_allowed_merge_methods_inner.dart';
@immutable
class Repository-rule-pull-requestParameters {
    Repository-rule-pull-requestParameters(
        {  this.allowed_merge_methods = const [], this.automatic_copilot_code_review_enabled,required this.dismiss_stale_reviews_on_push,required this.require_code_owner_review,required this.require_last_push_approval,required this.required_approving_review_count,required this.required_review_thread_resolution,
         }
    );

    factory Repository-rule-pull-requestParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-pull-requestParameters(
            allowed_merge_methods: (json['allowed_merge_methods'] as List?)?.map<Repository-rule-pull-requestParametersAllowedMergeMethodsInner>((e) => Repository-rule-pull-requestParametersAllowedMergeMethodsInner.fromJson(e as String) ).toList() ,
            automatic_copilot_code_review_enabled: (json['automatic_copilot_code_review_enabled'] as bool?) ,
            dismiss_stale_reviews_on_push: (json['dismiss_stale_reviews_on_push'] as bool) ,
            require_code_owner_review: (json['require_code_owner_review'] as bool) ,
            require_last_push_approval: (json['require_last_push_approval'] as bool) ,
            required_approving_review_count: (json['required_approving_review_count'] as int).toInt() ,
            required_review_thread_resolution: (json['required_review_thread_resolution'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-pull-requestParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-pull-requestParameters.fromJson(json);
    }

    final  List<Repository-rule-pull-requestParametersAllowedMergeMethodsInner>? allowed_merge_methods;
    final  bool? automatic_copilot_code_review_enabled;
    final bool  dismiss_stale_reviews_on_push;
    final bool  require_code_owner_review;
    final bool  require_last_push_approval;
    final int  required_approving_review_count;
    final bool  required_review_thread_resolution;


    Map<String, dynamic> toJson() {
        return {
            'allowed_merge_methods': allowed_merge_methods?.map((e) => e.toJson()).toList(),
            'automatic_copilot_code_review_enabled': automatic_copilot_code_review_enabled,
            'dismiss_stale_reviews_on_push': dismiss_stale_reviews_on_push,
            'require_code_owner_review': require_code_owner_review,
            'require_last_push_approval': require_last_push_approval,
            'required_approving_review_count': required_approving_review_count,
            'required_review_thread_resolution': required_review_thread_resolution,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          allowed_merge_methods,
          automatic_copilot_code_review_enabled,
          dismiss_stale_reviews_on_push,
          require_code_owner_review,
          require_last_push_approval,
          required_approving_review_count,
          required_review_thread_resolution,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-pull-requestParameters
            && listsEqual(allowed_merge_methods, other.allowed_merge_methods)
            && automatic_copilot_code_review_enabled == other.automatic_copilot_code_review_enabled
            && dismiss_stale_reviews_on_push == other.dismiss_stale_reviews_on_push
            && require_code_owner_review == other.require_code_owner_review
            && require_last_push_approval == other.require_last_push_approval
            && required_approving_review_count == other.required_approving_review_count
            && required_review_thread_resolution == other.required_review_thread_resolution
        ;
    }
}
