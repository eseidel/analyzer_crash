import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-required-status-checks_parameters.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
@immutable
class Repository-rule-required-status-checksParameters {
    Repository-rule-required-status-checksParameters(
        {  this.do_not_enforce_on_create, this.required_status_checks = const [],required this.strict_required_status_checks_policy,
         }
    );

    factory Repository-rule-required-status-checksParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-status-checksParameters(
            do_not_enforce_on_create: (json['do_not_enforce_on_create'] as bool?) ,
            required_status_checks: (json['required_status_checks'] as List).map<Repository-rule-params-status-check-configuration>((e) => Repository-rule-params-status-check-configuration.fromJson(e as Map<String, dynamic>) ).toList() ,
            strict_required_status_checks_policy: (json['strict_required_status_checks_policy'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-status-checksParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-status-checksParameters.fromJson(json);
    }

    final  bool? do_not_enforce_on_create;
    final List<Repository-rule-params-status-check-configuration>  required_status_checks;
    final bool  strict_required_status_checks_policy;


    Map<String, dynamic> toJson() {
        return {
            'do_not_enforce_on_create': do_not_enforce_on_create,
            'required_status_checks': required_status_checks.map((e) => e.toJson()).toList(),
            'strict_required_status_checks_policy': strict_required_status_checks_policy,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          do_not_enforce_on_create,
          required_status_checks,
          strict_required_status_checks_policy,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-required-status-checksParameters
            && do_not_enforce_on_create == other.do_not_enforce_on_create
            && listsEqual(required_status_checks, other.required_status_checks)
            && strict_required_status_checks_policy == other.strict_required_status_checks_policy
        ;
    }
}
