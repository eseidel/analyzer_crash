import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
enum App-permissionsGitSshKeys {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsGitSshKeys._(this.value);

    factory App-permissionsGitSshKeys.fromJson(String json) {
        return App-permissionsGitSshKeys.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsGitSshKeys value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsGitSshKeys? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsGitSshKeys.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
