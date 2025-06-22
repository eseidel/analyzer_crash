import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/thread.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
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
import 'package:github/model/thread_subject.dart';
import 'package:github/model/thread.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
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
import 'package:github/model/thread_subject.dart';
@immutable
class Thread {
    Thread(
        { required this.id,required this.repository,required this.subject,required this.reason,required this.unread,required this.updated_at,required this.last_read_at,required this.url,required this.subscription_url,
         }
    );

    factory Thread.fromJson(Map<String, dynamic>
        json) {
        return Thread(
            id: json['id'] as String ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            subject: ThreadSubject.fromJson(json['subject'] as Map<String, dynamic>) ,
            reason: json['reason'] as String ,
            unread: (json['unread'] as bool) ,
            updated_at: json['updated_at'] as String ,
            last_read_at: json['last_read_at'] as String ,
            url: json['url'] as String ,
            subscription_url: json['subscription_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Thread? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Thread.fromJson(json);
    }

    final String  id;
    final Minimal-repository  repository;
    final ThreadSubject  subject;
    final String  reason;
    final bool  unread;
    final String  updated_at;
    final String  last_read_at;
    final String  url;
    final String  subscription_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'repository': repository.toJson(),
            'subject': subject.toJson(),
            'reason': reason,
            'unread': unread,
            'updated_at': updated_at,
            'last_read_at': last_read_at,
            'url': url,
            'subscription_url': subscription_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          repository,
          subject,
          reason,
          unread,
          updated_at,
          last_read_at,
          url,
          subscription_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Thread
            && id == other.id
            && repository == other.repository
            && subject == other.subject
            && reason == other.reason
            && unread == other.unread
            && updated_at == other.updated_at
            && last_read_at == other.last_read_at
            && url == other.url
            && subscription_url == other.subscription_url
        ;
    }
}
