import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
enum App-permissionsPullRequests {
    read._('read'),
    write._('write'),
    ;

    const App-permissionsPullRequests._(this.value);

    factory App-permissionsPullRequests.fromJson(String json) {
        return App-permissionsPullRequests.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown App-permissionsPullRequests value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissionsPullRequests? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return App-permissionsPullRequests.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
