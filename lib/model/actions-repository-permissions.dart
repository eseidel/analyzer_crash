import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-repository-permissions.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/actions-repository-permissions.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/selected-actions-url.dart';
@immutable
class Actions-repository-permissions {
    Actions-repository-permissions(
        { required this.enabled, this.allowed_actions, this.selected_actions_url,
         }
    );

    factory Actions-repository-permissions.fromJson(Map<String, dynamic>
        json) {
        return Actions-repository-permissions(
            enabled: (json['enabled'] as bool) ,
            allowed_actions: Allowed-actions.maybeFromJson(json['allowed_actions'] as String?) ,
            selected_actions_url: Selected-actions-url((json['selected_actions_url'] as String?) ),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-repository-permissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-repository-permissions.fromJson(json);
    }

    final bool  enabled;
    final  Allowed-actions? allowed_actions;
    final  Selected-actions-url? selected_actions_url;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
            'allowed_actions': allowed_actions?.toJson(),
            'selected_actions_url': selected_actions_url?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled,
          allowed_actions,
          selected_actions_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-repository-permissions
            && enabled == other.enabled
            && allowed_actions == other.allowed_actions
            && selected_actions_url == other.selected_actions_url
        ;
    }
}
