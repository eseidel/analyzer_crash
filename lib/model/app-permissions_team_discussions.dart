import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
enum App-permissionsTeamDiscussions {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsTeamDiscussions._(this.value);

    factory App-permissionsTeamDiscussions.fromJson(String json) {
        return App-permissionsTeamDiscussions.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsTeamDiscussions value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsTeamDiscussions? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsTeamDiscussions.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
