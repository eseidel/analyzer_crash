import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/import.dart';
import 'package:github/model/import_status.dart';
import 'package:github/model/import_project_choices_inner.dart';
import 'package:github/model/import.dart';
import 'package:github/model/import_status.dart';
import 'package:github/model/import_project_choices_inner.dart';

@immutable
class Import {
  Import({
    required this.vcs,
    this.use_lfs,
    required this.vcs_url,
    this.svc_root,
    this.tfvc_project,
    required this.status,
    this.status_text,
    this.failed_step,
    this.error_message,
    this.import_percent,
    this.commit_count,
    this.push_percent,
    this.has_large_files,
    this.large_files_size,
    this.large_files_count,
    this.project_choices = const [],
    this.message,
    this.authors_count,
    required this.url,
    required this.html_url,
    required this.authors_url,
    required this.repository_url,
    this.svn_root,
  });

  factory Import.fromJson(Map<String, dynamic> json) {
    return Import(
      vcs: json['vcs'] as String,
      use_lfs: (json['use_lfs'] as bool?),
      vcs_url: json['vcs_url'] as String,
      svc_root: json['svc_root'] as String?,
      tfvc_project: json['tfvc_project'] as String?,
      status: ImportStatus.fromJson(json['status'] as String),
      status_text: json['status_text'] as String?,
      failed_step: json['failed_step'] as String?,
      error_message: json['error_message'] as String?,
      import_percent: (json['import_percent'] as int?).toInt(),
      commit_count: (json['commit_count'] as int?).toInt(),
      push_percent: (json['push_percent'] as int?).toInt(),
      has_large_files: (json['has_large_files'] as bool?),
      large_files_size: (json['large_files_size'] as int?).toInt(),
      large_files_count: (json['large_files_count'] as int?).toInt(),
      project_choices: (json['project_choices'] as List?)
          ?.map<ImportProjectChoicesInner>(
            (e) =>
                ImportProjectChoicesInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      message: json['message'] as String?,
      authors_count: (json['authors_count'] as int?).toInt(),
      url: json['url'] as String,
      html_url: json['html_url'] as String,
      authors_url: json['authors_url'] as String,
      repository_url: json['repository_url'] as String,
      svn_root: json['svn_root'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Import? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Import.fromJson(json);
  }

  final String vcs;
  final bool? use_lfs;
  final String vcs_url;
  final String? svc_root;
  final String? tfvc_project;
  final ImportStatus status;
  final String? status_text;
  final String? failed_step;
  final String? error_message;
  final int? import_percent;
  final int? commit_count;
  final int? push_percent;
  final bool? has_large_files;
  final int? large_files_size;
  final int? large_files_count;
  final List<ImportProjectChoicesInner>? project_choices;
  final String? message;
  final int? authors_count;
  final String url;
  final String html_url;
  final String authors_url;
  final String repository_url;
  final String? svn_root;

  Map<String, dynamic> toJson() {
    return {
      'vcs': vcs,
      'use_lfs': use_lfs,
      'vcs_url': vcs_url,
      'svc_root': svc_root,
      'tfvc_project': tfvc_project,
      'status': status.toJson(),
      'status_text': status_text,
      'failed_step': failed_step,
      'error_message': error_message,
      'import_percent': import_percent,
      'commit_count': commit_count,
      'push_percent': push_percent,
      'has_large_files': has_large_files,
      'large_files_size': large_files_size,
      'large_files_count': large_files_count,
      'project_choices': project_choices?.map((e) => e.toJson()).toList(),
      'message': message,
      'authors_count': authors_count,
      'url': url,
      'html_url': html_url,
      'authors_url': authors_url,
      'repository_url': repository_url,
      'svn_root': svn_root,
    };
  }

  @override
  int get hashCode => Object.hash(
    vcs,
    use_lfs,
    vcs_url,
    svc_root,
    tfvc_project,
    status,
    status_text,
    failed_step,
    error_message,
    import_percent,
    commit_count,
    push_percent,
    has_large_files,
    large_files_size,
    large_files_count,
    project_choices,
    message,
    authors_count,
    url,
    html_url,
    authors_url,
    repository_url,
    svn_root,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Import &&
        vcs == other.vcs &&
        use_lfs == other.use_lfs &&
        vcs_url == other.vcs_url &&
        svc_root == other.svc_root &&
        tfvc_project == other.tfvc_project &&
        status == other.status &&
        status_text == other.status_text &&
        failed_step == other.failed_step &&
        error_message == other.error_message &&
        import_percent == other.import_percent &&
        commit_count == other.commit_count &&
        push_percent == other.push_percent &&
        has_large_files == other.has_large_files &&
        large_files_size == other.large_files_size &&
        large_files_count == other.large_files_count &&
        listsEqual(project_choices, other.project_choices) &&
        message == other.message &&
        authors_count == other.authors_count &&
        url == other.url &&
        html_url == other.html_url &&
        authors_url == other.authors_url &&
        repository_url == other.repository_url &&
        svn_root == other.svn_root;
  }
}
