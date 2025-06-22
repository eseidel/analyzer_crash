import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/set_codespaces_access_request_visibility.dart';
import 'package:github/model/codespaces/set_codespaces_access_request_visibility.dart';
enum Codespaces&#x2F;setCodespacesAccessRequestVisibility {
    disabled._('disabled'),
    selectedMembers._('selected_members'),
    allMembers._('all_members'),
    allMembersAndOutsideCollaborators._('all_members_and_outside_collaborators'),
    ;

    const Codespaces&#x2F;setCodespacesAccessRequestVisibility._(this.value);

    factory Codespaces&#x2F;setCodespacesAccessRequestVisibility.fromJson(String json) {
        return Codespaces&#x2F;setCodespacesAccessRequestVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespaces&#x2F;setCodespacesAccessRequestVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;setCodespacesAccessRequestVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;setCodespacesAccessRequestVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
