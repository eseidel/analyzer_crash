import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';
import 'package:github/model/job.dart';
import 'package:github/model/job_status.dart';
import 'package:github/model/job_conclusion.dart';
import 'package:github/model/job_steps_inner.dart';
import 'package:github/model/job_steps_inner_status.dart';

@immutable
class Job {
  Job({
    required this.id,
    required this.run_id,
    required this.run_url,
    this.run_attempt,
    required this.node_id,
    required this.head_sha,
    required this.url,
    required this.html_url,
    required this.status,
    required this.conclusion,
    required this.created_at,
    required this.started_at,
    required this.completed_at,
    required this.name,
    this.steps = const [],
    required this.check_run_url,
    this.labels = const [],
    required this.runner_id,
    required this.runner_name,
    required this.runner_group_id,
    required this.runner_group_name,
    required this.workflow_name,
    required this.head_branch,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: (json['id'] as int).toInt(),
      run_id: (json['run_id'] as int).toInt(),
      run_url: json['run_url'] as String,
      run_attempt: (json['run_attempt'] as int?).toInt(),
      node_id: json['node_id'] as String,
      head_sha: json['head_sha'] as String,
      url: json['url'] as String,
      html_url: json['html_url'] as String,
      status: JobStatus.fromJson(json['status'] as String),
      conclusion: JobConclusion.fromJson(json['conclusion'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      started_at: DateTime.parse(json['started_at'] as String),
      completed_at: DateTime.parse(json['completed_at'] as String),
      name: json['name'] as String,
      steps: (json['steps'] as List?)
          ?.map<JobStepsInner>(
            (e) => JobStepsInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      check_run_url: json['check_run_url'] as String,
      labels: (json['labels'] as List).cast<String>(),
      runner_id: (json['runner_id'] as int).toInt(),
      runner_name: json['runner_name'] as String,
      runner_group_id: (json['runner_group_id'] as int).toInt(),
      runner_group_name: json['runner_group_name'] as String,
      workflow_name: json['workflow_name'] as String,
      head_branch: json['head_branch'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Job? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Job.fromJson(json);
  }

  final int id;
  final int run_id;
  final String run_url;
  final int? run_attempt;
  final String node_id;
  final String head_sha;
  final String url;
  final String html_url;
  final JobStatus status;
  final JobConclusion conclusion;
  final DateTime created_at;
  final DateTime started_at;
  final DateTime completed_at;
  final String name;
  final List<JobStepsInner>? steps;
  final String check_run_url;
  final List<String> labels;
  final int runner_id;
  final String runner_name;
  final int runner_group_id;
  final String runner_group_name;
  final String workflow_name;
  final String head_branch;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'run_id': run_id,
      'run_url': run_url,
      'run_attempt': run_attempt,
      'node_id': node_id,
      'head_sha': head_sha,
      'url': url,
      'html_url': html_url,
      'status': status.toJson(),
      'conclusion': conclusion.toJson(),
      'created_at': created_at.toIso8601String(),
      'started_at': started_at.toIso8601String(),
      'completed_at': completed_at.toIso8601String(),
      'name': name,
      'steps': steps?.map((e) => e.toJson()).toList(),
      'check_run_url': check_run_url,
      'labels': labels,
      'runner_id': runner_id,
      'runner_name': runner_name,
      'runner_group_id': runner_group_id,
      'runner_group_name': runner_group_name,
      'workflow_name': workflow_name,
      'head_branch': head_branch,
    };
  }

  @override
  int get hashCode => Object.hash(
    id,
    run_id,
    run_url,
    run_attempt,
    node_id,
    head_sha,
    url,
    html_url,
    status,
    conclusion,
    created_at,
    started_at,
    completed_at,
    name,
    steps,
    check_run_url,
    labels,
    runner_id,
    runner_name,
    runner_group_id,
    runner_group_name,
    workflow_name,
    head_branch,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Job &&
        id == other.id &&
        run_id == other.run_id &&
        run_url == other.run_url &&
        run_attempt == other.run_attempt &&
        node_id == other.node_id &&
        head_sha == other.head_sha &&
        url == other.url &&
        html_url == other.html_url &&
        status == other.status &&
        conclusion == other.conclusion &&
        created_at == other.created_at &&
        started_at == other.started_at &&
        completed_at == other.completed_at &&
        name == other.name &&
        listsEqual(steps, other.steps) &&
        check_run_url == other.check_run_url &&
        listsEqual(labels, other.labels) &&
        runner_id == other.runner_id &&
        runner_name == other.runner_name &&
        runner_group_id == other.runner_group_id &&
        runner_group_name == other.runner_group_name &&
        workflow_name == other.workflow_name &&
        head_branch == other.head_branch;
  }
}
