import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-organization-permissions.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions-organization-permissions.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
@immutable
class Actions-organization-permissions {
    Actions-organization-permissions(
        { required this.enabled_repositories, this.selected_repositories_url, this.allowed_actions, this.selected_actions_url,
         }
    );

    factory Actions-organization-permissions.fromJson(Map<String, dynamic>
        json) {
        return Actions-organization-permissions(
            enabled_repositories: Enabled-repositories.fromJson(json['enabled_repositories'] as String) ,
            selected_repositories_url: json['selected_repositories_url'] as String? ,
            allowed_actions: Allowed-actions.maybeFromJson(json['allowed_actions'] as String?) ,
            selected_actions_url: Selected-actions-url((json['selected_actions_url'] as String?) ),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-organization-permissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-organization-permissions.fromJson(json);
    }

    final Enabled-repositories  enabled_repositories;
    final  String? selected_repositories_url;
    final  Allowed-actions? allowed_actions;
    final  Selected-actions-url? selected_actions_url;


    Map<String, dynamic> toJson() {
        return {
            'enabled_repositories': enabled_repositories.toJson(),
            'selected_repositories_url': selected_repositories_url,
            'allowed_actions': allowed_actions?.toJson(),
            'selected_actions_url': selected_actions_url?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled_repositories,
          selected_repositories_url,
          allowed_actions,
          selected_actions_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-organization-permissions
            && enabled_repositories == other.enabled_repositories
            && selected_repositories_url == other.selected_repositories_url
            && allowed_actions == other.allowed_actions
            && selected_actions_url == other.selected_actions_url
        ;
    }
}
