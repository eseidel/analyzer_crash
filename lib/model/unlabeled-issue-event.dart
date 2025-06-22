import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/unlabeled-issue-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/unlabeled-issue-event_label.dart';
import 'package:github/model/unlabeled-issue-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/unlabeled-issue-event_label.dart';
@immutable
class Unlabeled-issue-event {
    Unlabeled-issue-event(
        { required this.id,required this.node_id,required this.url,required this.actor,required this.event,required this.commit_id,required this.commit_url,required this.created_at,required this.performed_via_github_app,required this.label,
         }
    );

    factory Unlabeled-issue-event.fromJson(Map<String, dynamic>
        json) {
        return Unlabeled-issue-event(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            actor: Simple-user.fromJson(json['actor'] as Map<String, dynamic>) ,
            event: json['event'] as String ,
            commit_id: json['commit_id'] as String ,
            commit_url: json['commit_url'] as String ,
            created_at: json['created_at'] as String ,
            performed_via_github_app: Nullable-integration.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) ,
            label: Unlabeled-issue-eventLabel.fromJson(json['label'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Unlabeled-issue-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Unlabeled-issue-event.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final Simple-user  actor;
    final String  event;
    final String  commit_id;
    final String  commit_url;
    final String  created_at;
    final Nullable-integration  performed_via_github_app;
    final Unlabeled-issue-eventLabel  label;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'actor': actor.toJson(),
            'event': event,
            'commit_id': commit_id,
            'commit_url': commit_url,
            'created_at': created_at,
            'performed_via_github_app': performed_via_github_app.toJson(),
            'label': label.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          actor,
          event,
          commit_id,
          commit_url,
          created_at,
          performed_via_github_app,
          label,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Unlabeled-issue-event
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && actor == other.actor
            && event == other.event
            && commit_id == other.commit_id
            && commit_url == other.commit_url
            && created_at == other.created_at
            && performed_via_github_app == other.performed_via_github_app
            && label == other.label
        ;
    }
}
