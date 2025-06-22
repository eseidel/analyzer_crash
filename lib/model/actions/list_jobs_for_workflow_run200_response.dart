import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/actions/list_jobs_for_workflow_run200_response.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
@immutable
class Actions&#x2F;listJobsForWorkflowRun200Response {
    Actions&#x2F;listJobsForWorkflowRun200Response(
        { required this.total_count, this.jobs = const [],
         }
    );

    factory Actions&#x2F;listJobsForWorkflowRun200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listJobsForWorkflowRun200Response(
            total_count: (json['total_count'] as int).toInt() ,
            jobs: (json['jobs'] as List).map<Job>((e) => Job.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listJobsForWorkflowRun200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listJobsForWorkflowRun200Response.fromJson(json);
    }

    final int  total_count;
    final List<Job>  jobs;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'jobs': jobs.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          jobs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listJobsForWorkflowRun200Response
            && total_count == other.total_count
            && listsEqual(jobs, other.jobs)
        ;
    }
}
