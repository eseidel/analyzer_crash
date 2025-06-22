import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/list_for_suite200_response.dart';
import 'package:github/model/check-run.dart';
import 'package:github/model/check-run_status.dart';
import 'package:github/model/check-run_conclusion.dart';
import 'package:github/model/check-run_output.dart';
import 'package:github/model/check-run_check_suite.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/checks/list_for_suite200_response.dart';
import 'package:github/model/check-run.dart';
import 'package:github/model/check-run_status.dart';
import 'package:github/model/check-run_conclusion.dart';
import 'package:github/model/check-run_output.dart';
import 'package:github/model/check-run_check_suite.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/deployment-simple.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Checks&#x2F;listForSuite200Response {
    Checks&#x2F;listForSuite200Response(
        { required this.total_count, this.check_runs = const [],
         }
    );

    factory Checks&#x2F;listForSuite200Response.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;listForSuite200Response(
            total_count: (json['total_count'] as int).toInt() ,
            check_runs: (json['check_runs'] as List).map<Check-run>((e) => Check-run.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;listForSuite200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;listForSuite200Response.fromJson(json);
    }

    final int  total_count;
    final List<Check-run>  check_runs;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'check_runs': check_runs.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          check_runs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Checks&#x2F;listForSuite200Response
            && total_count == other.total_count
            && listsEqual(check_runs, other.check_runs)
        ;
    }
}
