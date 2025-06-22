import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-with-full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
import 'package:github/model/codespace-with-full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/full-repository_permissions.dart';
import 'package:github/model/nullable-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_code_search_index_status.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/code-of-conduct-simple.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-codespace-machine.dart';
import 'package:github/model/nullable-codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
@immutable
class Codespace-with-full-repository {
    Codespace-with-full-repository(
        { required this.id,required this.name, this.display_name,required this.environment_id,required this.owner,required this.billable_owner,required this.repository,required this.machine, this.devcontainer_path,required this.prebuild,required this.created_at,required this.updated_at,required this.last_used_at,required this.state,required this.url,required this.git_status,required this.location,required this.idle_timeout_minutes,required this.web_url,required this.machines_url,required this.start_url,required this.stop_url, this.publish_url,required this.pulls_url, this.recent_folders = const [], this.runtime_constraints, this.pending_operation, this.pending_operation_disabled_reason, this.idle_timeout_notice, this.retention_period_minutes, this.retention_expires_at,
         }
    );

    factory Codespace-with-full-repository.fromJson(Map<String, dynamic>
        json) {
        return Codespace-with-full-repository(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            display_name: json['display_name'] as String? ,
            environment_id: json['environment_id'] as String ,
            owner: Simple-user.fromJson(json['owner'] as Map<String, dynamic>) ,
            billable_owner: Simple-user.fromJson(json['billable_owner'] as Map<String, dynamic>) ,
            repository: Full-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            machine: Nullable-codespace-machine.fromJson(json['machine'] as Map<String, dynamic>) ,
            devcontainer_path: json['devcontainer_path'] as String? ,
            prebuild: (json['prebuild'] as bool) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            last_used_at: DateTime.parse(json['last_used_at'] as String),
            state: Codespace-with-full-repositoryState.fromJson(json['state'] as String) ,
            url: json['url'] as String ,
            git_status: Codespace-with-full-repositoryGitStatus.fromJson(json['git_status'] as Map<String, dynamic>) ,
            location: Codespace-with-full-repositoryLocation.fromJson(json['location'] as String) ,
            idle_timeout_minutes: (json['idle_timeout_minutes'] as int).toInt() ,
            web_url: json['web_url'] as String ,
            machines_url: json['machines_url'] as String ,
            start_url: json['start_url'] as String ,
            stop_url: json['stop_url'] as String ,
            publish_url: json['publish_url'] as String? ,
            pulls_url: json['pulls_url'] as String ,
            recent_folders: (json['recent_folders'] as List).cast<String>() ,
            runtime_constraints: Codespace-with-full-repositoryRuntimeConstraints.maybeFromJson(json['runtime_constraints'] as Map<String, dynamic>?) ,
            pending_operation: (json['pending_operation'] as bool?) ,
            pending_operation_disabled_reason: json['pending_operation_disabled_reason'] as String? ,
            idle_timeout_notice: json['idle_timeout_notice'] as String? ,
            retention_period_minutes: (json['retention_period_minutes'] as int?).toInt() ,
            retention_expires_at: maybeParseDateTime(json['retention_expires_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-with-full-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespace-with-full-repository.fromJson(json);
    }

    final int  id;
    final String  name;
    final  String? display_name;
    final String  environment_id;
    final Simple-user  owner;
    final Simple-user  billable_owner;
    final Full-repository  repository;
    final Nullable-codespace-machine  machine;
    final  String? devcontainer_path;
    final bool  prebuild;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  last_used_at;
    final Codespace-with-full-repositoryState  state;
    final String  url;
    final Codespace-with-full-repositoryGitStatus  git_status;
    final Codespace-with-full-repositoryLocation  location;
    final int  idle_timeout_minutes;
    final String  web_url;
    final String  machines_url;
    final String  start_url;
    final String  stop_url;
    final  String? publish_url;
    final String  pulls_url;
    final List<String>  recent_folders;
    final  Codespace-with-full-repositoryRuntimeConstraints? runtime_constraints;
    final  bool? pending_operation;
    final  String? pending_operation_disabled_reason;
    final  String? idle_timeout_notice;
    final  int? retention_period_minutes;
    final  DateTime? retention_expires_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'display_name': display_name,
            'environment_id': environment_id,
            'owner': owner.toJson(),
            'billable_owner': billable_owner.toJson(),
            'repository': repository.toJson(),
            'machine': machine.toJson(),
            'devcontainer_path': devcontainer_path,
            'prebuild': prebuild,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'last_used_at': last_used_at.toIso8601String(),
            'state': state.toJson(),
            'url': url,
            'git_status': git_status.toJson(),
            'location': location.toJson(),
            'idle_timeout_minutes': idle_timeout_minutes,
            'web_url': web_url,
            'machines_url': machines_url,
            'start_url': start_url,
            'stop_url': stop_url,
            'publish_url': publish_url,
            'pulls_url': pulls_url,
            'recent_folders': recent_folders,
            'runtime_constraints': runtime_constraints?.toJson(),
            'pending_operation': pending_operation,
            'pending_operation_disabled_reason': pending_operation_disabled_reason,
            'idle_timeout_notice': idle_timeout_notice,
            'retention_period_minutes': retention_period_minutes,
            'retention_expires_at': retention_expires_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          display_name,
          environment_id,
          owner,
          billable_owner,
          repository,
          machine,
          devcontainer_path,
          prebuild,
          created_at,
          updated_at,
          last_used_at,
          state,
          url,
          git_status,
          location,
          idle_timeout_minutes,
          web_url,
          machines_url,
          start_url,
          stop_url,
          publish_url,
          pulls_url,
          recent_folders,
          runtime_constraints,
          pending_operation,
          pending_operation_disabled_reason,
          idle_timeout_notice,
          retention_period_minutes,
          retention_expires_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespace-with-full-repository
            && id == other.id
            && name == other.name
            && display_name == other.display_name
            && environment_id == other.environment_id
            && owner == other.owner
            && billable_owner == other.billable_owner
            && repository == other.repository
            && machine == other.machine
            && devcontainer_path == other.devcontainer_path
            && prebuild == other.prebuild
            && created_at == other.created_at
            && updated_at == other.updated_at
            && last_used_at == other.last_used_at
            && state == other.state
            && url == other.url
            && git_status == other.git_status
            && location == other.location
            && idle_timeout_minutes == other.idle_timeout_minutes
            && web_url == other.web_url
            && machines_url == other.machines_url
            && start_url == other.start_url
            && stop_url == other.stop_url
            && publish_url == other.publish_url
            && pulls_url == other.pulls_url
            && listsEqual(recent_folders, other.recent_folders)
            && runtime_constraints == other.runtime_constraints
            && pending_operation == other.pending_operation
            && pending_operation_disabled_reason == other.pending_operation_disabled_reason
            && idle_timeout_notice == other.idle_timeout_notice
            && retention_period_minutes == other.retention_period_minutes
            && retention_expires_at == other.retention_expires_at
        ;
    }
}
